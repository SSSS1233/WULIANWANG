package com.subing.po;

public class Light {
  private Long lightid;
  private Long nodeid;
  private int value;
  private java.sql.Timestamp date;

  public Long getLightid() {
    return lightid;
  }

  public void setLightid(Long lightid) {
    this.lightid = lightid;
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
