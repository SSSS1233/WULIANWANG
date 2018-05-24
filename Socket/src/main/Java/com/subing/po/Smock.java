package com.subing.po;

public class Smock {
  private Long smockid;
  private Long nodeid;
  private int value;
  private java.sql.Timestamp date;

  public Long getSmockid() {
    return smockid;
  }

  public void setSmockid(Long smockid) {
    this.smockid = smockid;
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
