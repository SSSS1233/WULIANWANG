package com.subing.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.subing.po.Hum;
import com.subing.service.SocketService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/5/22 15:05.
 * @Comment
 */
@Controller
public class SocketHandler {
    @Autowired
    SocketService socketService;

    @RequestMapping(value = "/JSP/selectHum")
    @ResponseBody
    public Map<String, Object> selectHum() {
        List<Hum> l = new ArrayList<Hum>();
        l = socketService.selectHum();
        System.out.println("LLLLL" + l.get(0).getValue());
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("hum", l.get(0).getValue());
        return map;
    }

    @RequestMapping(value = "/JSP/selectTemp")
    @ResponseBody
    public Map<String, Object> selectTemp() {
        Map<String, Object> map = new HashMap<String, Object>();
        int temp=socketService.selectTemp().getValue();
        map.put("temp",temp);
        return  map;
    }
    @RequestMapping(value = "/JSP/selectLight")
    @ResponseBody
    public Map<String, Object> selectLight() {
        Map<String, Object> map = new HashMap<String, Object>();
        int light=socketService.selectLight().getValue();
        map.put("light",light);
        return  map;
    }
    @RequestMapping(value = "/JSP/selectSmoke")
    @ResponseBody
    public Map<String, Object> selectSmoke() {
        Map<String, Object> map = new HashMap<String, Object>();
        int smoke=socketService.selectSmoke().getValue();
        map.put("smoke",smoke);
        return  map;
    }

}
