package com.avast.android.mobilesecurity.engine;

import com.avast.android.generic.util.e;
import com.avast.android.generic.util.m;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

public class ah
{
  public ak a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  private String e = null;

  public ah()
  {
    this.a = ak.a;
    this.e = UUID.randomUUID().toString();
  }

  public ah(ak paramak)
  {
    this.a = paramak;
    this.e = UUID.randomUUID().toString();
  }

  public ah(ak paramak, String paramString1, String paramString2)
  {
    this.a = paramak;
    this.b = paramString1;
    this.c = paramString2;
    this.e = UUID.randomUUID().toString();
  }

  private static ak a(byte[] paramArrayOfByte, int paramInt)
  {
    return ak.a((256 + ((Byte)e.a(paramArrayOfByte, null, Byte.TYPE, paramInt)).intValue()) % 256);
  }

  public static Integer a()
  {
    return Integer.valueOf(Integer.parseInt("uchrs-2".substring(1 + "uchrs-2".indexOf("-"))));
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

  public static ah b(byte[] paramArrayOfByte)
  {
    ah localah = new ah();
    try
    {
      if (4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue() != paramArrayOfByte.length)
        throw new IllegalArgumentException("Invalid structure length");
    }
    catch (Exception localException)
    {
      m.b("Exception parsing url check result", localException);
      localah.a = ak.d;
    }
    while (true)
    {
      return localah;
      int j;
      int k;
      for (int i = 4; i < paramArrayOfByte.length; i = k + j)
      {
        j = ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        k = i + 4;
        if (paramArrayOfByte[(-1 + (k + j))] != -1)
          throw new IllegalArgumentException("Invalid payload length");
        aj localaj = aj.a(((Short)e.a(paramArrayOfByte, null, Short.TYPE, k)).shortValue());
        if (localaj != null)
          switch (ai.a[localaj.ordinal()])
          {
          case 1:
            localah.a = a(paramArrayOfByte, k + 2);
            if (localah.a == null)
              localah.a = ak.a;
            break;
          case 2:
            localah.b = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
            break;
          case 3:
            localah.c = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
            break;
          case 4:
            localah.e = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
            break;
          case 5:
            localah.d = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
          }
      }
    }
  }

  public String b()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.ah
 * JD-Core Version:    0.6.2
 */