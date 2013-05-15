package com.avast.android.generic.service;

import com.avast.android.generic.b.l;
import com.avast.android.generic.f.a.b;
import com.avast.android.generic.h.o;
import com.avast.android.generic.internet.HttpSender;
import com.avast.android.generic.util.t;

class e
  implements Runnable
{
  e(AvastService paramAvastService)
  {
  }

  public void run()
  {
    int i = 1;
    long l1 = System.currentTimeMillis();
    t.a("AvastGenericSc", "Shutdown check syncing...");
    while (true)
    {
      synchronized (AvastService.a(this.a))
      {
        long l2 = System.currentTimeMillis();
        t.a("AvastGenericSc", "Sync for shutdown check took " + (l2 - l1) + " ms");
        try
        {
          t.a("AvastGeneric", this.a.getApplicationContext(), "Service shutdown check");
          if (AvastService.d(this.a) > 0)
          {
            t.a("AvastSDC", this.a.getApplicationContext(), "- " + AvastService.d(this.a) + " clients still bound");
            boolean bool = this.a.a();
            if (bool)
              break label375;
            return;
          }
          if ((AvastService.e(this.a) != null) && (AvastService.e(this.a).a()))
          {
            t.a("AvastSDC", this.a.getApplicationContext(), "- SMS sender is sending");
            continue;
          }
        }
        catch (Exception localException)
        {
          t.a("AvastGeneric", this.a.getApplicationContext(), "Service shutdown check failed", localException);
          long l3 = System.currentTimeMillis();
          t.a("AvastGenericSc", "Service shutdown check took " + (l3 - l1) + " ms");
          continue;
        }
      }
      if ((AvastService.f(this.a) != null) && (AvastService.f(this.a).c()))
      {
        t.a("AvastSDC", this.a.getApplicationContext(), "- HTTP sender is sending");
      }
      else if ((AvastService.g(this.a) != null) && (AvastService.g(this.a).a()))
      {
        t.a("AvastSDC", this.a.getApplicationContext(), "- Command receiver is populated");
      }
      else if ((AvastService.c(this.a) != null) && (AvastService.c(this.a).a()))
      {
        t.a("AvastSDC", this.a.getApplicationContext(), "- Task handler is running");
        continue;
        label375: if (i == 0)
        {
          t.a("AvastGeneric", this.a.getApplicationContext(), "Service stops");
          AvastService.h(this.a);
        }
        else
        {
          t.a("AvastGeneric", this.a.getApplicationContext(), "Service continues");
        }
      }
      else
      {
        i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.e
 * JD-Core Version:    0.6.2
 */