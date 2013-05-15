package com.avast.android.mobilesecurity.engine;

import com.avast.android.generic.util.e;
import com.avast.android.generic.util.m;
import java.util.LinkedList;
import java.util.List;

public class s
{
  public x a = null;
  public String b = null;
  public v c = null;
  public u d = null;
  public boolean e = false;

  public s()
  {
    this.a = x.j;
  }

  public s(x paramx, String paramString)
  {
    if ((!x.j.equals(paramx)) && (paramString == null))
      throw new IllegalArgumentException("Infection description must be passed if the scan result is not RESULT_OK");
    this.a = paramx;
    this.b = paramString;
  }

  private static u a(v paramv)
  {
    u localu;
    switch (t.b[paramv.ordinal()])
    {
    default:
      localu = u.a;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    }
    while (true)
    {
      return localu;
      localu = u.b;
      continue;
      localu = u.d;
      continue;
      localu = u.c;
    }
  }

  private static v a(String paramString)
  {
    v localv;
    if ((paramString == null) || ("".equals(paramString)))
      localv = v.a;
    while (true)
    {
      return localv;
      String str = paramString.toUpperCase();
      if (str.contains(" [DIALER]"))
        localv = v.b;
      else if (str.contains(" [ADW]"))
        localv = v.c;
      else if (str.contains(" [CRYP]"))
        localv = v.d;
      else if (str.contains(" [DRP]"))
        localv = v.e;
      else if (str.contains(" [EXPL]"))
        localv = v.f;
      else if (str.contains(" [KIT]"))
        localv = v.g;
      else if (str.contains(" [RTK]"))
        localv = v.h;
      else if (str.contains(" [SPY]"))
        localv = v.i;
      else if (str.contains(" [TRJ]"))
        localv = v.j;
      else if (str.contains(" [WRM]"))
        localv = v.k;
      else if (str.contains(" [PUP]"))
        localv = v.l;
      else if (str.contains(" [JOKE]"))
        localv = v.m;
      else if (str.contains(" [TOOL]"))
        localv = v.n;
      else if (str.contains(" [HEUR]"))
        localv = v.o;
      else if (str.contains(" [SUSP]"))
        localv = v.p;
      else
        localv = v.j;
    }
  }

  private static x a(byte[] paramArrayOfByte, int paramInt)
  {
    return x.a((256 + ((Byte)e.a(paramArrayOfByte, null, Byte.TYPE, paramInt)).intValue()) % 256);
  }

  public static Integer a()
  {
    return Integer.valueOf(Integer.parseInt("srs-2".substring(1 + "srs-2".indexOf("-"))));
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
        m.c("ScanResultStructure.parseResultList - numResultBytes=" + j);
        byte[] arrayOfByte = new byte[j];
        System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
        k = j + i;
        s locals = b(arrayOfByte);
        m.c("ScanResultStructure.parseResultList - " + locals.b);
        localLinkedList1.add(locals);
      }
    }
  }

  public static s b(byte[] paramArrayOfByte)
  {
    s locals = new s();
    try
    {
      if (4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue() != paramArrayOfByte.length)
        throw new IllegalArgumentException("Invalid structure length");
    }
    catch (Exception localException)
    {
      m.b("Exception parsing scan result", localException);
      locals.a = x.a;
      locals.b = "";
    }
    while (true)
    {
      if (locals.a.a() > x.j.a())
      {
        locals.c = a(locals.b);
        locals.d = a(locals.c);
      }
      if ((locals.b != null) && (!"".equals(locals.b)));
      return locals;
      int j;
      int k;
      for (int i = 4; i < paramArrayOfByte.length; i = k + j)
      {
        j = ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        k = i + 4;
        if (paramArrayOfByte[(-1 + (k + j))] != -1)
          throw new IllegalArgumentException("Invalid payload length");
        w localw = w.a(((Short)e.a(paramArrayOfByte, null, Short.TYPE, k)).shortValue());
        if (localw != null)
          switch (t.a[localw.ordinal()])
          {
          case 1:
            locals.a = a(paramArrayOfByte, k + 2);
            if (locals.a == null)
              locals.a = x.j;
            break;
          case 2:
            locals.b = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
          }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.s
 * JD-Core Version:    0.6.2
 */