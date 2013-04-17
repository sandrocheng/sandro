package com.qq.taf.jce.dynamic;

public final class ByteField extends NumberField
{
  private byte data;

  ByteField(byte paramByte, int paramInt)
  {
    super(paramInt);
    this.data = paramByte;
  }

  public byte get()
  {
    return this.data;
  }

  public Number getNumber()
  {
    return Byte.valueOf(this.data);
  }

  public void set(byte paramByte)
  {
    this.data = paramByte;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.dynamic.ByteField
 * JD-Core Version:    0.6.2
 */