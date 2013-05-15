package com.avast.android.mobilesecurity.engine;

import com.avast.android.generic.util.e;
import com.avast.android.generic.util.m;
import java.util.LinkedList;
import java.util.List;

public class l
{
  public o a = null;
  public String b = null;

  public l()
  {
    this.a = o.g;
  }

  public l(o paramo, String paramString)
  {
    if ((!o.g.equals(paramo)) && (paramString == null))
      throw new IllegalArgumentException("Infection description must be passed if the scan result is not RESULT_OK");
    this.a = paramo;
    this.b = paramString;
  }

  private static o a(byte[] paramArrayOfByte, int paramInt)
  {
    return o.a((256 + ((Byte)e.a(paramArrayOfByte, null, Byte.TYPE, paramInt)).intValue()) % 256);
  }

  public static Integer a()
  {
    return Integer.valueOf(Integer.parseInt("msrs-1".substring(1 + "msrs-1".indexOf("-"))));
  }

  public static List a(byte[] paramArrayOfByte)
  {
    LinkedList localLinkedList1 = new LinkedList();
    if (paramArrayOfByte == null);
    for (LinkedList localLinkedList2 = localLinkedList1; ; localLinkedList2 = localLinkedList1)
    {
      return localLinkedList2;
      m.c(e.a(paramArrayOfByte));
      int k;
      for (int i = 0; i < paramArrayOfByte.length; i = k)
      {
        int j = 4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        byte[] arrayOfByte = new byte[j];
        System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
        k = j + i;
        localLinkedList1.add(b(arrayOfByte));
      }
    }
  }

  public static l b(byte[] paramArrayOfByte)
  {
    l locall = new l();
    try
    {
      if (4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue() != paramArrayOfByte.length)
        throw new IllegalArgumentException("Invalid structure length");
    }
    catch (Exception localException)
    {
      m.b("Exception parsing message scan result", localException);
      locall.a = o.a;
      locall.b = "";
    }
    while (true)
    {
      if ((locall.b != null) && (!"".equals(locall.b)));
      return locall;
      int j;
      int k;
      for (int i = 4; i < paramArrayOfByte.length; i = k + j)
      {
        j = ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        k = i + 4;
        if (paramArrayOfByte[(-1 + (k + j))] != -1)
          throw new IllegalArgumentException("Invalid payload length");
        n localn = n.a(((Short)e.a(paramArrayOfByte, null, Short.TYPE, k)).shortValue());
        if (localn != null)
          switch (m.a[localn.ordinal()])
          {
          case 1:
            locall.a = a(paramArrayOfByte, k + 2);
            if (locall.a == null)
              locall.a = o.g;
            break;
          case 2:
            locall.b = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
          }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.l
 * JD-Core Version:    0.6.2
 */