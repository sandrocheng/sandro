package com.avast.android.generic.h;

import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.t;

class p
  implements n
{
  p(o paramo)
  {
  }

  public void a()
  {
    synchronized (o.a(this.a))
    {
      o.b(this.a);
      t.a("AvastGeneric", o.c(this.a), "EventsRunning at " + o.d(this.a) + " (handleEvent2 end)");
      if (!this.a.a())
        o.c(this.a).b();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.p
 * JD-Core Version:    0.6.2
 */