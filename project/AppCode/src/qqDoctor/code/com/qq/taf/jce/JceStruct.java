package com.qq.taf.jce;

import java.io.Serializable;

public abstract class JceStruct
  implements Serializable
{
  public static final byte BYTE = 0;
  public static final byte DOUBLE = 5;
  public static final byte FLOAT = 4;
  public static final byte INT = 2;
  public static final int JCE_MAX_STRING_LENGTH = 104857600;
  public static final byte LIST = 9;
  public static final byte LONG = 3;
  public static final byte MAP = 8;
  public static final byte SHORT = 1;
  public static final byte SIMPLE_LIST = 13;
  public static final byte STRING1 = 6;
  public static final byte STRING4 = 7;
  public static final byte STRUCT_BEGIN = 10;
  public static final byte STRUCT_END = 11;
  public static final byte ZERO_TAG = 12;

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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.JceStruct
 * JD-Core Version:    0.6.2
 */