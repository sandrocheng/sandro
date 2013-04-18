package com.hoi.antivirus;

import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
{
  public static final int a = 6;
  public static final int b = 5;
  public static final int c = 4;
  public static final int d = 3;
  public static final int e = 2;
  public static final int f = 1;
  public static final int g = 0;
  private static final int l = -1;
  private static final String m = "name";
  private static final String n = "type";
  private static final String o = "desc";
  private static final String p = "hash";
  private static final String q = "UTF-8";
  private static final boolean r = true;
  private static final int s = 2;
  private static final int t = 4;
  private static final byte u = 0;
  private static final byte v = 1;
  private static final byte w = 2;
  private static final byte x = 3;
  public String h = null;
  public int i = -1;
  public String j = null;
  public String k = null;

  private static int a(byte[] paramArrayOfByte1, int paramInt, byte paramByte, byte[] paramArrayOfByte2)
  {
    int i1 = paramInt + 1;
    paramArrayOfByte1[paramInt] = paramByte;
    byte[] arrayOfByte = a(paramArrayOfByte2.length, 2);
    int i2 = i1;
    int i3 = 0;
    while (i3 < arrayOfByte.length)
    {
      int i7 = i2 + 1;
      paramArrayOfByte1[i2] = arrayOfByte[i3];
      i3++;
      i2 = i7;
    }
    int i4 = 0;
    int i6;
    for (int i5 = i2; i4 < paramArrayOfByte2.length; i5 = i6)
    {
      i6 = i5 + 1;
      paramArrayOfByte1[i5] = paramArrayOfByte2[i4];
      i4++;
    }
    return i5;
  }

  public static a a(byte[] paramArrayOfByte)
  {
    a locala = new a();
    int i1 = 0;
    int i2 = paramArrayOfByte.length;
    if (i1 < i2)
    {
      int i3 = (byte)(i1 + 1);
      int i4 = paramArrayOfByte[i1];
      int i5 = (int)b(paramArrayOfByte, i3, 2);
      int i6 = (byte)(i3 + 2);
      switch (i4)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        i1 = (byte)(i6 + i5);
        break;
        locala.h = a(paramArrayOfByte, i6, i5);
        continue;
        locala.i = ((int)b(paramArrayOfByte, i6, i5));
        continue;
        locala.j = a(paramArrayOfByte, i6, i5);
        continue;
        locala.k = a(paramArrayOfByte, i6, i5);
      }
    }
    return locala;
  }

  private static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      String str2 = new String(paramArrayOfByte, paramInt1, paramInt2, "UTF-8").trim();
      str1 = str2;
      return str1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        localUnsupportedEncodingException.printStackTrace();
        String str1 = null;
      }
    }
  }

  private static void a()
  {
    a locala = new a();
    locala.h = "testnam\"杭州e";
    locala.i = 5;
    locala.j = "testde杭州sc";
    locala.k = "汗";
    b(locala.c());
  }

  private static byte[] a(int paramInt)
  {
    return a(paramInt, 4);
  }

  private static byte[] a(long paramLong, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i1 = paramInt - 1;
    for (int i2 = 0; i1 >= 0; i2 += 8)
    {
      arrayOfByte[i1] = ((byte)(int)(0xFF & paramLong >> i2));
      i1--;
    }
    return arrayOfByte;
  }

  private static byte[] a(String paramString)
  {
    try
    {
      byte[] arrayOfByte2 = paramString.trim().getBytes("UTF-8");
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        localUnsupportedEncodingException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  private static long b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i1 = paramInt1;
    int i2 = 0;
    long l1 = 0L;
    while (i2 < paramInt2)
    {
      long l2 = l1 << 8;
      int i3 = i1 + 1;
      l1 = l2 | paramArrayOfByte[i1];
      i2++;
      i1 = i3;
    }
    return l1;
  }

  private static a b(String paramString)
  {
    a locala = new a();
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      locala.h = localJSONObject.getString("name");
      locala.i = localJSONObject.getInt("type");
      locala.j = localJSONObject.getString("desc");
      locala.k = localJSONObject.getString("hash");
      return locala;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }

  private byte[] b()
  {
    byte[] arrayOfByte1 = a(this.h);
    byte[] arrayOfByte2 = a(this.i, 4);
    byte[] arrayOfByte3 = a(this.j);
    byte[] arrayOfByte4 = a(this.k);
    byte[] arrayOfByte5 = new byte[0 + (3 + arrayOfByte1.length) + (3 + arrayOfByte2.length) + (3 + arrayOfByte3.length) + (3 + arrayOfByte4.length)];
    a(arrayOfByte5, a(arrayOfByte5, a(arrayOfByte5, a(arrayOfByte5, 0, (byte)0, arrayOfByte1), (byte)1, arrayOfByte2), (byte)2, arrayOfByte3), (byte)3, arrayOfByte4);
    return arrayOfByte5;
  }

  private String c()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("name", this.h);
      localJSONObject.put("type", this.i);
      localJSONObject.put("desc", this.j);
      localJSONObject.put("hash", this.k);
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.antivirus.a
 * JD-Core Version:    0.6.2
 */