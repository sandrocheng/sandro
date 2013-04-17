package com.qq.taf.jce;

import java.io.Serializable;

public abstract class JceStruct
  implements Serializable
{
  public boolean containField(String paramString)
  {
    return false;
  }

  public abstract void display(StringBuilder paramStringBuilder, int paramInt);

  public Object getFieldByName(String paramString)
  {
    return null;
  }

  public JceStruct newInit()
  {
    return null;
  }

  public abstract void readFrom(JceInputStream paramJceInputStream);

  public void recyle()
  {
  }

  public void setFieldByName(String paramString, Object paramObject)
  {
  }

  public byte[] toByteArray()
  {
    JceOutputStream localJceOutputStream = new JceOutputStream();
    writeTo(localJceOutputStream);
    return localJceOutputStream.toByteArray();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    display(localStringBuilder, 0);
    return localStringBuilder.toString();
  }

  public abstract void writeTo(JceOutputStream paramJceOutputStream);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.qq.taf.jce.JceStruct
 * JD-Core Version:    0.6.2
 */