package com.avast.android.mobilesecurity.engine;

import com.avast.android.generic.util.m;
import java.util.LinkedList;
import java.util.List;

public class e
{
  public final String a;

  private e(String paramString)
  {
    this.a = paramString;
  }

  public static Integer a()
  {
    return Integer.valueOf(Integer.parseInt("dp-1".substring(1 + "dp-1".indexOf("-"))));
  }

  public static List a(byte[] paramArrayOfByte)
  {
    LinkedList localLinkedList1 = new LinkedList();
    if (paramArrayOfByte == null);
    for (LinkedList localLinkedList2 = localLinkedList1; ; localLinkedList2 = localLinkedList1)
    {
      return localLinkedList2;
      m.c(com.avast.android.generic.util.e.a(paramArrayOfByte));
      int k;
      for (int i = 0; i < paramArrayOfByte.length; i = k)
      {
        int j = 4 + ((Integer)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        byte[] arrayOfByte = new byte[j];
        System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
        k = j + i;
        e locale = b(arrayOfByte);
        if (locale != null)
          localLinkedList1.add(locale);
      }
    }
  }

  public static e b(byte[] paramArrayOfByte)
  {
    Object localObject1 = null;
    try
    {
      int i = 4 + ((Integer)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue();
      int j = paramArrayOfByte.length;
      localObject1 = null;
      if (i != j)
        throw new IllegalArgumentException("Invalid structure length");
    }
    catch (Exception localException)
    {
      m.b("Exception parsing detection prefix", localException);
    }
    while (true)
    {
      return localObject1;
      int k = 4;
      while (k < paramArrayOfByte.length)
      {
        int m = ((Integer)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Integer.TYPE, k)).intValue();
        int n = k + 4;
        if (paramArrayOfByte[(-1 + (n + m))] != -1)
          throw new IllegalArgumentException("Invalid payload length");
        g localg = g.a(((Short)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Short.TYPE, n)).shortValue());
        Object localObject2;
        if (localg != null)
          switch (f.a[localg.ordinal()])
          {
          case 1:
            localObject2 = new e(new String(paramArrayOfByte, n + 2, -1 + (m - 2)));
            break;
          }
        else
          localObject2 = localObject1;
        k = n + m;
        localObject1 = localObject2;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.e
 * JD-Core Version:    0.6.2
 */