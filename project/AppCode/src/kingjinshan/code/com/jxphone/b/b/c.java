package com.jxphone.b.b;

import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPOutputStream;

public final class c
{
  private static String a(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    try
    {
      localGZIPOutputStream.write(paramString.getBytes());
      String str = new String(localByteArrayOutputStream.toByteArray());
      return str;
    }
    finally
    {
      localGZIPOutputStream.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.b.b.c
 * JD-Core Version:    0.6.2
 */