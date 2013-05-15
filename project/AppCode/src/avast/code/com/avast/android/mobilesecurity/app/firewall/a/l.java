package com.avast.android.mobilesecurity.app.firewall.a;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.firewall.core.b;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.t;
import com.google.analytics.tracking.android.bo;

class l
  implements Runnable
{
  l(e parame, ProgressDialog paramProgressDialog, Handler paramHandler1, Handler paramHandler2)
  {
  }

  public void run()
  {
    try
    {
      this.a.dismiss();
      try
      {
        label7: if ((b.d(e.k(this.d), e.f(this.d))) && (b.b(e.l(this.d), e.f(this.d))))
        {
          this.b.sendEmptyMessage(0);
          if (!((t)e.m(this.d)).g(false))
          {
            if (e.f(this.d) != null)
              e.f(this.d).a(e.n(this.d).getString(2131493665));
            com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "failedDisable", Long.valueOf(0L));
          }
          else
          {
            WidgetControlProvider.a(e.o(this.d));
            com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "disabled", Long.valueOf(0L));
            this.c.sendEmptyMessage(0);
          }
        }
      }
      catch (Exception localException2)
      {
        m.b("Error in purge rules handler", localException2);
      }
    }
    catch (Exception localException1)
    {
      break label7;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.a.l
 * JD-Core Version:    0.6.2
 */