/**
 * 用户管理
 */
var pageCurr;
var form;
$(function() {
    layui.use('table', function(){
        var table = layui.table;
        form = layui.form;

        tableIns=table.render({
            elem: '#arFileTypeList',
            url:'/arFileType/getArFileTypeList',
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
                ,{field:'code', title:'文件编码',align:'center'}
                ,{field:'description', title:'描述',align:'center'}
                ,{field:'deviceName', title: '设备名称',align:'center'}
                ,{field:'createTime', title: '创建时间',align:'center'}
                ,{field:'landMark', title: '地标',align:'center'}
                ,{title:'操作',align:'center', toolbar:'#optBar'}
            ]],
            done: function(res, curr, count){
                //如果是异步请求数据方式，res即为你接口返回的信息。
                debugger;
                $.ajax({
                    type: "get",
                    url: "/landMark/landMarkSelectList",
                    success: function (res) {
                        $("#landMark").empty();
                        var map = new Map();
                        for(var i =0;i<res.data.landMark.length;i++){
                            var landMarkDesc = res.data.landMark[i].description;
                            var landMarkCode = res.data.landMark[i].code;
                            map.set(landMarkCode, landMarkDesc);
                            $("#landMark").append("<option value=\""+landMarkDesc+"\">"+landMarkDesc+"</option>");
                        }
                        console.log(map);
                    //重新渲染
                        layui.form.render("select");
                        $("[data-field='landMark']").children().each(function(){
                            for (var [key, value] of map) {
                                if($(this).text()==key){
                                    $(this).text(value);
                                }
                            }
                        });
                    },
                    error: function () {
                        layer.alert("操作请求错误，请您稍后再试",function(){
                            layer.closeAll();
                            load(obj);
                        });
                    }
                });
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
        table.on('tool(arFileTypeTable)', function(obj){
            var data = obj.data;
            if(obj.event === 'del'){
                //删除
                delFileType(data,data.id);
            } else if(obj.event === 'edit'){
                //编辑
                edit(data);
            }
        });

        //监听提交
        form.on('submit(arFileTypeSubmit)', function(data){
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
        data: $("#arFileTypeForm").serialize(),
        url: "/arFileType/setArFileType",
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
    formSelects.data('arFileType', 'server', {
        url: '/arFileType/arFileTypeList',
        keyName: 'name',
        keyVal: 'id',
        success: function(id, url, searchVal, result){      //使用远程方式的success回调

            console.log(pid)
            if(pid != null){
                var assistAuditArry =pid.split(",");
                formSelects.value('arFileType', assistAuditArry);
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
        content:$('#setArFileType'),
        end:function(){
            cleanArFileType();
        }
    });
}

// 删除ar文件类型
function delFileType(obj,id) {
    if(null!=id){
        layer.confirm('您确定要删除吗？', {
            btn: ['确认','返回'] //按钮
        }, function(){
            $.post("/arFileType/del",{"id":id},function(data){
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
function cleanArFileType() {
    $("#id").val("");
    $("#code").val("");
    $("#description").val("");
    $("#logicDelete").val("");
    $("#landMark").val("");
}