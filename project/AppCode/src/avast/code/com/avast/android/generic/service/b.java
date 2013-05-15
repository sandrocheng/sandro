package com.avast.android.generic.service;

import com.avast.android.generic.h.o;
import com.avast.android.generic.util.ae;
import com.avast.android.generic.util.ax;
import com.avast.android.generic.util.t;

class b
  implements Runnable
{
  b(a parama)
  {
  }

  public void run()
  {
    long l1 = System.currentTimeMillis();
    t.a("AvastGenericSc", "Task sync for " + this.a.a + " syncing...");
    synchronized (AvastService.a(this.a.d))
    {
      if (AvastService.b(this.a.d))
      {
        t.a("AvastGenericSc", "Not accepting further commands");
        AvastService.a(this.a.d, false);
        ae.a(this.a.d, this.a.b);
        ax.a();
      }
      else
      {
        long l2 = System.currentTimeMillis();
        t.a("AvastGenericSc", "Task sync for " + this.a.a + " took " + (l2 - l1) + " ms");
        this.a.d.a(this.a.a, this.a.c);
        this.a.d.e();
        AvastService.c(this.a.d).a(this.a.a, this.a.c);
        long l3 = System.currentTimeMillis();
        t.a("AvastGenericSc", "Task handling of " + this.a.a + " took " + (l3 - l1) + " ms");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.b
 * JD-Core Version:    0.6.2
 */