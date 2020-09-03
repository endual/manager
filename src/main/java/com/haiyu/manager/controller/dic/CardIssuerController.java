package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.CardIssuerDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.CardIssuerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("cardIssuer")
public class CardIssuerController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CardIssuerService cardIssuerService;

    @RequestMapping("/cardIssuerManage")
    public String cardIssuerManage() {
        return "dic/cardIssuerManage";
    }
    @PostMapping("/getCardIssuerList")
    @ResponseBody
    public PageDataResult getCardIssuerList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = cardIssuerService.getCardIssuerList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     * 功能描述:设置权限[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 9:42
     */
    @PostMapping("setCardIssuer")
    @ResponseBody
    public Map<String,Object> setCardIssuer(CardIssuerDO cardIssuerDO) {
        logger.info("设置权限[新增或更新]！cardIssuerDO:" + cardIssuerDO);
        Map<String,Object> data = new HashMap();
        if(cardIssuerDO.getIssuerId() == null){
            //新增权限
            data = cardIssuerService.addCardIssuer(cardIssuerDO);
        }else{
            //修改权限
            data = cardIssuerService.updateCardIssuer(cardIssuerDO);
        }
        return data;
    }
}
