package com.subing.service;

import com.subing.po.Hum;
import com.subing.po.Light;
import com.subing.po.Smock;
import com.subing.po.Temp;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/5/22 15:03.
 * @Comment
 */
public interface SocketService {
    public List<Hum> selectHum();
    public Temp selectTemp();
    public Light selectLight();
    public Smock selectSmoke();
}
