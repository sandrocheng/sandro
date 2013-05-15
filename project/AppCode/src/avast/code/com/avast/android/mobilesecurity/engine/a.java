package com.avast.android.mobilesecurity.engine;

import com.avast.android.generic.util.e;

public class a
{
  public boolean a = true;
  public boolean b = false;
  public boolean c = false;
  public boolean d = false;

  public static a a(byte[] paramArrayOfByte)
  {
    a locala1 = new a();
    a locala2;
    try
    {
      if (4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue() == paramArrayOfByte.length)
        break label56;
      throw new IllegalArgumentException("Invalid structure length");
    }
    catch (Exception localException)
    {
      locala2 = new a();
      locala2.a = false;
    }
    label54: return locala2;
    label56: int j;
    int k;
    for (int i = 4; ; i = k + j)
    {
      c localc;
      if (i < paramArrayOfByte.length)
      {
        j = ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        k = i + 4;
        if (paramArrayOfByte[(-1 + (k + j))] != -1)
          throw new IllegalArgumentException("Invalid payload length");
        localc = c.a(((Short)e.a(paramArrayOfByte, null, Short.TYPE, k)).shortValue());
        if (localc == null);
      }
      else
      {
        switch (b.a[localc.ordinal()])
        {
        case 1:
          locala1.b = ((Boolean)e.a(paramArrayOfByte, null, Boolean.TYPE, k + 2)).booleanValue();
          break;
        case 2:
          locala1.c = ((Boolean)e.a(paramArrayOfByte, null, Boolean.TYPE, k + 2)).booleanValue();
          break;
        case 3:
          locala1.d = ((Boolean)e.a(paramArrayOfByte, null, Boolean.TYPE, k + 2)).booleanValue();
          continue;
          locala2 = locala1;
          break label54;
        }
      }
    }
  }

  public static Integer a()
  {
    return Integer.valueOf(Integer.parseInt("aci-1".substring(1 + "aci-1".indexOf("-"))));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.a
 * JD-Core Version:    0.6.2
 */