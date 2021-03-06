package com.subing.handler;

import com.subing.dao.SocketsDao;
import com.subing.po.Rfid;
import com.subing.service.RfidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/5/27 17:26.
 * @Comment
 */
@Controller
public class RfidSocketHandler {
    @Autowired
    RfidService rfidService;
    @Autowired
    SocketsDao dao;

    @ResponseBody
    @RequestMapping(value = "/JSP/rfid")
    public Map<String, Object> choose() {

        Map<String, Object> map = new HashMap<String, Object>();
       /* Rfid rfid = rfidService.select();
        //System.out.println(rfid);
        if (rfid != null) {
            System.out.println(rfid);
            map.put("type", rfid.getType());
        }
        rfidService.delete();*/
        String type=dao.selectrfid();
        if(type!=null)
        {
            System.out.println(type);
            map.put("type", type);
        }
        dao.delete();
        return map;
    }
}