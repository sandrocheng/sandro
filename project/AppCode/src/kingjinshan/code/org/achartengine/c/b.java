package org.achartengine.c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.achartengine.a.e;
import org.achartengine.a.h;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public final class b extends a
{
  private List c = new ArrayList();

  public b(org.achartengine.a.a parama)
  {
    super(parama);
  }

  private void a()
  {
    try
    {
      Iterator localIterator = this.c.iterator();
      if (localIterator.hasNext())
        localIterator.next();
    }
    finally
    {
    }
  }

  public final void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    double[] arrayOfDouble1;
    int j;
    h localh;
    int k;
    double[] arrayOfDouble2;
    if ((this.a instanceof h))
    {
      int i = this.b.getScalesCount();
      arrayOfDouble1 = this.b.getPanLimits();
      if ((arrayOfDouble1 != null) && (arrayOfDouble1.length == 4))
      {
        j = 1;
        localh = (h)this.a;
        k = 0;
        if (k >= i)
          break label527;
        arrayOfDouble2 = a(k);
        double[] arrayOfDouble3 = localh.a(k);
        if (((arrayOfDouble2[0] != arrayOfDouble2[1]) || (arrayOfDouble3[0] != arrayOfDouble3[1])) && ((arrayOfDouble2[2] != arrayOfDouble2[3]) || (arrayOfDouble3[2] != arrayOfDouble3[3])))
          break label134;
      }
    }
    while (true)
    {
      return;
      j = 0;
      break;
      label134: a(arrayOfDouble2, k);
      double[] arrayOfDouble4 = localh.a(paramFloat1, paramFloat2, k);
      double[] arrayOfDouble5 = localh.a(paramFloat3, paramFloat4, k);
      if ((arrayOfDouble4 != null) && (arrayOfDouble5 != null))
      {
        double d1 = arrayOfDouble4[0] - arrayOfDouble5[0];
        double d2 = arrayOfDouble4[1] - arrayOfDouble5[1];
        if (this.b.isPanXEnabled())
        {
          if (j == 0)
            break label376;
          if (arrayOfDouble1[0] > d1 + arrayOfDouble2[0])
            a(arrayOfDouble1[0], arrayOfDouble1[0] + (arrayOfDouble2[1] - arrayOfDouble2[0]), k);
        }
        else
        {
          label251: if (this.b.isPanYEnabled())
          {
            if (j == 0)
              break label464;
            if (arrayOfDouble1[2] <= d2 + arrayOfDouble2[2])
              break label399;
            b(arrayOfDouble1[2], arrayOfDouble1[2] + (arrayOfDouble2[3] - arrayOfDouble2[2]), k);
          }
        }
        while (true)
        {
          k++;
          break;
          if (arrayOfDouble1[1] < d1 + arrayOfDouble2[1])
          {
            a(arrayOfDouble1[1] - (arrayOfDouble2[1] - arrayOfDouble2[0]), arrayOfDouble1[1], k);
            break label251;
          }
          a(d1 + arrayOfDouble2[0], d1 + arrayOfDouble2[1], k);
          break label251;
          label376: a(d1 + arrayOfDouble2[0], d1 + arrayOfDouble2[1], k);
          break label251;
          label399: if (arrayOfDouble1[3] < d2 + arrayOfDouble2[3])
          {
            b(arrayOfDouble1[3] - (arrayOfDouble2[3] - arrayOfDouble2[2]), arrayOfDouble1[3], k);
          }
          else
          {
            b(d2 + arrayOfDouble2[2], d2 + arrayOfDouble2[3], k);
            continue;
            label464: b(d2 + arrayOfDouble2[2], d2 + arrayOfDouble2[3], k);
          }
        }
        e locale = (e)this.a;
        locale.a(locale.c() + (int)(paramFloat3 - paramFloat1));
        locale.b(locale.d() + (int)(paramFloat4 - paramFloat2));
        label527: a();
      }
    }
  }

  public final void a(c paramc)
  {
    try
    {
      this.c.add(paramc);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b(c paramc)
  {
    try
    {
      this.c.add(paramc);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.c.b
 * JD-Core Version:    0.6.2
 */