package com.c.a.a;

import android.os.Handler;
import android.os.SystemClock;
import java.util.Vector;

public final class k
{
  public k(d paramd, String paramString)
  {
  }

  public final void a(ag paramag, Object paramObject)
  {
    int i = paramag.f();
    if (i < d.i(this.b));
    while (true)
    {
      return;
      d.b(this.b, i);
      d locald = this.b;
      d.a(locald, d.c((String)paramObject));
      if (d.a(this.b) != null)
      {
        d.l(this.b).sendEmptyMessage(2);
        d.a(this.b, SystemClock.elapsedRealtime());
        d.l(this.b).sendEmptyMessage(3);
      }
      try
      {
        int j = d.m(this.b).size();
        if ((j > 0) && (this.a.equals(((h)d.m(this.b).get(j - 1)).b)))
          d.m(this.b).remove(j - 1);
      }
      catch (Exception localException)
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.k
 * JD-Core Version:    0.6.2
 */