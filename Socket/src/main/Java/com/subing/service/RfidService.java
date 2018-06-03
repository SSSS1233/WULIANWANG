package com.subing.service;

import com.subing.po.Rfid;

import javax.transaction.Transactional;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/5/27 17:33.
 * @Comment
 */

public interface RfidService {
    public Rfid select();
    public void delete();
}
