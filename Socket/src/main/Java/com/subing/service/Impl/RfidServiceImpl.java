package com.subing.service.Impl;

import com.subing.dao.RfidDao;
import com.subing.po.Rfid;
import com.subing.service.RfidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/5/27 17:34.
 * @Comment
 */
@Service
public class RfidServiceImpl implements RfidService{
    @Autowired
    RfidDao dao;
    public Rfid select() {
        return dao.select();
    }
}
