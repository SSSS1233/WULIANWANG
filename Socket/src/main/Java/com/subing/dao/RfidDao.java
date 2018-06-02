package com.subing.dao;

import com.subing.po.Rfid;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/5/27 17:32.
 * @Comment
 */
public interface RfidDao {
    public Rfid select();
    public void delete();
}
