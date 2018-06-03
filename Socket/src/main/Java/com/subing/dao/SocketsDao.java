package com.subing.dao;

import com.subing.tools.DBTools;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Intellij IDEA.
 *
 * @Author SUBING
 * @Date 2018/6/3 15:33.
 * @Comment
 */
@Service
public class SocketsDao {
    public int selectTemp()
    {
        String sql="select *from temp where tempid=(SELECT max(tempid) from temp)";
        List<Object[]> l=DBTools.excuteQuery(sql);
        Object[] o=l.get(0);
        int temp=(Integer)o[2];
        return temp;
    }
    public int selectHum()
    {
        String sql="  select *from hum where humid=(SELECT max(humid) from hum)";
        List<Object[]> l=DBTools.excuteQuery(sql);
        Object[] o=l.get(0);
        int hum=(Integer)o[2];
        return hum;
    }
    public int selectLight()
    {
        String sql=" select *from light where lightid=(SELECT max(lightid) from light)";
        List<Object[]> l=DBTools.excuteQuery(sql);
        Object[] o=l.get(0);
        int light=(Integer)o[2];
        return light;
    }
    public int selectSmoke()
    {
        String sql="select *from smoke where smokeid=(SELECT max(smokeid) from smoke)";
        List<Object[]> l=DBTools.excuteQuery(sql);
        Object[] o=l.get(0);
        int smoke=(Integer)o[2];
        return smoke;
    }
    public String selectrfid()
    {
        String sql=" SELECT *from rfiddata where id=(select max(id) from rfiddata)";
        List<Object[]> l=DBTools.excuteQuery(sql);
        Object[] o=l.get(0);
        String type=(String)o[2];
        return type;
    }
    public void delete()
    {
        String sql="TRUNCATE TABLE rfiddata";
        DBTools.excuteUpdate(sql);
    }


}
