package com.avast.android.mobilesecurity.app.firewall.a;

import android.app.ProgressDialog;
import android.content.Context;
import com.avast.android.generic.d.c;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.q;
import com.avast.android.mobilesecurity.t;
import com.google.analytics.tracking.android.bo;

public class e extends c
{
  private CheckBoxRow a;
  private b b;
  private com.avast.android.mobilesecurity.app.firewall.core.a c;
  private a d;

  public e(Context paramContext, CheckBoxRow paramCheckBoxRow, b paramb, com.avast.android.mobilesecurity.app.firewall.core.a parama, a parama1)
  {
    super(paramContext);
    this.a = paramCheckBoxRow;
    this.b = paramb;
    this.c = parama;
    this.d = parama1;
  }

  private void c()
  {
    ProgressDialog localProgressDialog = ProgressDialog.show(b(), "", b().getString(2131493661), true);
    f localf = new f(this);
    new Thread(new i(this, localProgressDialog, new g(this), new h(this), localf)).start();
  }

  private void d()
  {
    ProgressDialog localProgressDialog = ProgressDialog.show(b(), "", b().getString(2131493666), true);
    j localj = new j(this);
    new Thread(new l(this, localProgressDialog, new k(this), localj)).start();
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool1 = ((t)a()).X();
    if (bool1 == paramBoolean);
    for (boolean bool2 = true; ; bool2 = false)
    {
      return bool2;
      try
      {
        this.a.b(bool1);
        try
        {
          label30: m.c("FirewallEnableRowDAO: Changing enabled status to: " + paramBoolean);
          if (paramBoolean)
            c();
          else
            d();
        }
        catch (Exception localException2)
        {
          m.b("FirewallEnableRowDAO: Error in setting status to " + paramBoolean, localException2);
          com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "failed", Long.valueOf(0L));
          com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "failedReason", localException2.getMessage(), Long.valueOf(0L));
          if (this.c == null)
            continue;
        }
        com.avast.android.mobilesecurity.app.firewall.core.a locala = this.c;
        Context localContext = b();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = q.a(b(), localException2);
        locala.a(localContext.getString(2131493668, arrayOfObject));
      }
      catch (Exception localException1)
      {
        break label30;
      }
    }
  }

  public boolean b(String paramString, boolean paramBoolean)
  {
    return super.b(paramString, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.a.e
 * JD-Core Version:    0.6.2
 */