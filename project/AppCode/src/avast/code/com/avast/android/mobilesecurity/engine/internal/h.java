package com.avast.android.mobilesecurity.engine.internal;

import java.util.HashMap;

public class h
{
  private HashMap a = new HashMap();

  public void a(String paramString, byte[] paramArrayOfByte)
  {
    this.a.put(paramString, paramArrayOfByte);
  }

  public byte[] a(String paramString)
  {
    return (byte[])this.a.get(paramString);
  }

  public boolean b(String paramString, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = (byte[])this.a.get(paramString);
    boolean bool = false;
    if (arrayOfByte != null)
    {
      bool = false;
      if (paramArrayOfByte != null)
      {
        int i = arrayOfByte.length;
        int j = paramArrayOfByte.length;
        bool = false;
        if (i == j)
          break label47;
      }
    }
    while (true)
    {
      return bool;
      label47: for (int k = 0; ; k++)
      {
        if (k >= arrayOfByte.length)
          break label85;
        int m = arrayOfByte[k];
        int n = paramArrayOfByte[k];
        bool = false;
        if (m != n)
          break;
      }
      label85: bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.h
 * JD-Core Version:    0.6.2
 */