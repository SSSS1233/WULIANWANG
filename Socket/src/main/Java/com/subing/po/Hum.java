package com.subing.po;

public class Hum {
  private Long humid;
  private Long nodeid;
  private int value;
  private java.sql.Timestamp date;

  public Long getHumid() {
    return humid;
  }

  public void setHumid(Long humid) {
    this.humid = humid;
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
