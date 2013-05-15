package com.avast.android.mobilesecurity.app.firewall.a;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.firewall.FirewallFragment;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.t;
import com.google.analytics.tracking.android.bo;

class i
  implements Runnable
{
  i(e parame, ProgressDialog paramProgressDialog, Handler paramHandler1, Handler paramHandler2, Handler paramHandler3)
  {
  }

  public void run()
  {
    try
    {
      this.a.dismiss();
      try
      {
        label7: if (FirewallFragment.a(e.e(this.e), true, e.f(this.e), true, this.b, this.c))
          if (!((t)e.g(this.e)).g(true))
          {
            if (e.f(this.e) != null)
              e.f(this.e).a(e.h(this.e).getString(2131493665));
            com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "failedEnable", Long.valueOf(0L));
          }
          else
          {
            WidgetControlProvider.a(e.i(this.e));
            com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "enabled", Long.valueOf(0L));
            this.d.sendEmptyMessage(0);
          }
      }
      catch (Exception localException2)
      {
        try
        {
          com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "failedReason", localException2.getMessage(), Long.valueOf(0L));
          com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "failedEnable", Long.valueOf(0L));
          m.b("FirewallEnableRowDAO: Error applying rules", localException2);
        }
        catch (Exception localException3)
        {
          com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "failedReason", localException3.getMessage(), Long.valueOf(0L));
          com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "failedEnable", Long.valueOf(0L));
          m.b("FirewallEnableRowDAO: Error in apply or save rules handler", localException3);
        }
        com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "failedEnable", Long.valueOf(0L));
      }
    }
    catch (Exception localException1)
    {
      break label7;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.a.i
 * JD-Core Version:    0.6.2
 */