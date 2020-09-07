package com.haiyu;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONUtil;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.pojo.dic.ArFileTypeDO;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;


public class HttpTest {
    @Test
    public void httptest() throws JSONException {
        String result = HttpUtil.get("localhost:8080/filetype/all");
        JSONObject json = new JSONObject(result);
        String data = json.get("data").toString();
        JSONArray array = JSONUtil.parseArray(data);
        List<ArFileTypeDO> list = new ArrayList<>();
        for (int i = 0; i < array.size(); i++) {
            ArFileTypeDO arFileTypeDO = new ArFileTypeDO();
            BeanUtil.copyProperties(array.get(i),arFileTypeDO);
            list.add(arFileTypeDO);
        }
        System.out.println(list.size());
    }

    @Test
    public void test() {
        DateTime time = DateUtil.parse(DateUtils.getCurrentDate());
        System.out.println(time);
    }
}
