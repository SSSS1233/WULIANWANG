package com.subing.po;
public class Temp {
  private Long tempid;
  private Long nodeid;
  private int value;
  private java.sql.Timestamp date;

  public Long getTempid() {
    return tempid;
  }

  public void setTempid(Long tempid) {
    this.tempid = tempid;
  }

  public Long getNodeid() {
    return nodeid;
  }

  public void setNodeid(Long nodeid) {
    this.nodeid = nodeid;
  }

  public int getValue() {
    return value;
  }

  public void setValue(int value) {
    this.value = value;
  }

  public java.sql.Timestamp getDate() {
    return date;
  }

  public void setDate(java.sql.Timestamp date) {
    this.date = date;
  }
}
