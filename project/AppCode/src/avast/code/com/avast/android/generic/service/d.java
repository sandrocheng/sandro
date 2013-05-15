package com.avast.android.generic.service;

import com.avast.android.generic.util.ae;
import com.avast.android.generic.util.ax;
import com.avast.android.generic.util.t;

class d
  implements Runnable
{
  d(c paramc)
  {
  }

  public void run()
  {
    long l1 = System.currentTimeMillis();
    t.a("AvastGenericSc", "Task handling syncing...");
    synchronized (AvastService.a(this.a.b))
    {
      if (AvastService.b(this.a.b))
      {
        t.a("AvastGenericSc", "Not accepting further commands");
        AvastService.a(this.a.b, false);
        ae.a(this.a.b, this.a.a);
        ax.a();
      }
      else
      {
        long l2 = System.currentTimeMillis();
        t.a("AvastGenericSc", "Task handling sync took " + (l2 - l1) + " ms");
        this.a.b.a(null, null);
        this.a.b.e();
        long l3 = System.currentTimeMillis();
        t.a("AvastGenericSc", "Task handling took " + (l3 - l1) + " ms");
        this.a.b.b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.d
 * JD-Core Version:    0.6.2
 */