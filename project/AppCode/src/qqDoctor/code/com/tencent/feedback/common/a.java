package com.tencent.feedback.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class a
{
  public final int a;
  public final long b;
  public final long c;
  public final int d;
  public final long e;
  public final long f;

  public a()
  {
  }

  public a(int paramInt1, long paramLong1, long paramLong2, int paramInt2, long paramLong3, long paramLong4)
  {
    this.d = 12;
    this.a = 50;
    this.c = 30000L;
    this.b = 60000L;
    this.e = 30000L;
    this.f = 2097152L;
  }

  public static Long[] a(LinkedHashMap paramLinkedHashMap, long paramLong)
  {
    Long[] arrayOfLong;
    if ((paramLinkedHashMap == null) || (paramLinkedHashMap.size() <= 0) || (paramLong <= 0L))
    {
      arrayOfLong = null;
      return arrayOfLong;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramLinkedHashMap.keySet().iterator();
    long l1 = 0L;
    label44: long l3;
    if ((localIterator.hasNext()) && (l1 < paramLong))
    {
      long l2 = ((Long)localIterator.next()).longValue();
      l3 = ((Long)paramLinkedHashMap.get(Long.valueOf(l2))).longValue();
      if (l1 + l3 > paramLong)
        break label157;
      localArrayList.add(Long.valueOf(l2));
    }
    label157: for (long l4 = l1 + l3; ; l4 = l1)
    {
      l1 = l4;
      break label44;
      if (localArrayList.size() > 0)
      {
        arrayOfLong = (Long[])localArrayList.toArray(new Long[1]);
        break;
      }
      arrayOfLong = null;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.a
 * JD-Core Version:    0.6.2
 */