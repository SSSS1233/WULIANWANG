package com.subing.service.Impl;

import com.subing.dao.SocketDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.subing.po.Hum;
import com.subing.po.Light;
import com.subing.po.Smock;
import com.subing.po.Temp;
import com.subing.service.SocketService;

import java.util.List;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/5/24 18:29.
 * @Comment
 */
@Service
public class SocketServiceImpl implements SocketService {
    @Autowired
    SocketDao socketDao;

    public List<Hum> selectHum() {
        return socketDao.selectHum();
    }

    public Temp selectTemp() {
        return socketDao.selectTemp();
    }

    public Light selectLight() {
        return socketDao.selectLight();
    }

    public Smock selectSmoke() {
        return socketDao.selectSmoke();
    }
}
