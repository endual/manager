/**
 *
 */
var pageCurr;
var form;
$(function() {
    layui.use('table', function(){
        var table = layui.table;
        form = layui.form;

        tableIns=table.render({
            elem: '#passengerTypeList',
            url:'/passengerType/getPassengerTypeList',
            method: 'post', //默认：get请求
            cellMinWidth: 80,
            page: true,
            request: {
                pageName: 'pageNum', //页码的参数名称，默认：pageNum
                limitName: 'pageSize' //每页数据量的参数名，默认：pageSize
            },
            response:{
                statusName: 'code', //数据状态的字段名称，默认：code
                statusCode: 200, //成功的状态码，默认：0
                countName: 'totals', //数据总数的字段名称，默认：count
                dataName: 'list' //数据列表的字段名称，默认：data
            },
            cols: [[
                {type:'numbers'}
                ,{field:'code', title:'编码',align:'center'}
                ,{field:'description', title:'描述',align:'center'}
                ,{field:'landMark', title: '地标',align:'center'}
                ,{field:'createTime', title: '创建时间',align:'center'}
                ,{title:'操作',align:'center', toolbar:'#optBar'}
            ]],
             done: function(res, curr, count){
                //如果是异步请求数据方式，res即为你接口返回的信息。
                $("[data-field='landMark']").children().each(function(){
                    if($(this).text()=='1'){
                        $(this).text("上海")
                    }else if($(this).text()=='0'){
                        $(this).text("福州")
                    }
                });
                //如果是异步请求数据方式，res即为你接口返回的信息。
                //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
                //console.log(res);
                //得到当前页码
                console.log(curr);
                //得到数据总量
                //console.log(count);
                pageCurr=curr;
            }
        });

        //监听工具条
        table.on('tool(passengerTypeTable)', function(obj){
            var data = obj.data;
            if(obj.event === 'del'){
                //删除
                del(data,data.id);
            } else if(obj.event === 'edit'){
                //编辑
                edit(data);
            }
        });

        //监听提交
        form.on('submit(passengerTypeSubmit)', function(data){
            // TODO 校验
            formSubmit(data);
            return false;
        });
    });
});

//提交表单
function formSubmit(obj){
    $.ajax({
        type: "post",
        data: $("#passengerTypeForm").serialize(),
        url: "/passengerType/setPassengerType",
        success: function (data) {
            if (data.code == 1) {
                layer.alert(data.msg,function(){
                    layer.closeAll();
                    load(obj);
                });
            } else {
                layer.alert(data.msg);
            }
        },
        error: function () {
            layer.alert("操作请求错误，请您稍后再试",function(){
                layer.closeAll();
                load(obj);
            });
        }
    });
}

//新增
function add() {
    edit(null,"新增");
}
//打开编辑框
function edit(data,title){
    var pid = null;
    if(data == null){
        $("#id").val("");
    }else{
        //回显数据
        $("#id").val(data.id);
        $("#code").val(data.code);
        $("#description").val(data.description);
        $("#logicDelete").val(data.logicDelete);
        $("#createTime").val(data.createTime);
        $("#landMark").val(data.landMark);
        
        pid = data.permissionIds;
    }

    //拉取最新的表格数据
    formSelects.data('passengerType', 'server', {
        url: '/passengerType/passengerTypeList',
        keyName: 'name',
        keyVal: 'id',
        success: function(id, url, searchVal, result){      //使用远程方式的success回调

            console.log(pid)
            if(pid != null){
                var assistAuditArry =pid.split(",");
                formSelects.value('passengerType', assistAuditArry);
            }

            console.log(result);    //返回的结果
        },
        error: function(id, url, searchVal, err){           //使用远程方式的error回调
            //同上
            console.log(err);   //err对象
        },
    });


    var pageNum = $(".layui-laypage-skip").find("input").val();
    $("#pageNum").val(pageNum);

    layer.open({
        type:1,
        title: title,
        fixed:false,
        resize :false,
        shadeClose: true,
        area: ['550px','550px'],
        content:$('#setPassengerType'),
        end:function(){
            clean();
        }
    });
}

// 删除
function del(obj,id) {
    if(null!=id){
        layer.confirm('您确定要删除吗？', {
            btn: ['确认','返回'] //按钮
        }, function(){
            $.post("/passengerType/del",{"id":id},function(data){
                if (data.code == 1) {
                    layer.alert(data.msg,function(){
                        layer.closeAll();
                        load(obj);
                    });
                } else {
                    layer.alert(data.msg);
                }
            });
        }, function(){
            layer.closeAll();
        });
    }
}

function load(obj){
    //重新加载table
    tableIns.reload({
        where: obj.field
        , page: {
            curr: pageCurr //从当前页码开始
        }
    });
}
function cleanPassengerType() {
    $("#id").val("");
    $("#code").val("");
    $("#description").val("");
    $("#logicDelete").val("");
}