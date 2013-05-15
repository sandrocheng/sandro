package com.avast.android.mobilesecurity.service;

import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.b.d;
import com.avast.android.generic.b.q;
import com.avast.android.generic.h.o;
import com.avast.android.generic.service.AvastService;
import com.avast.android.mobilesecurity.app.account.AccountReportService;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.service.a.a;

public class CentralService extends AvastService
{
  public d a(String paramString, com.avast.android.generic.b.h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((q.a(this, 2131165710, paramString)) || (paramString.equals("S")))
      return new a(this, paramh, paramBoolean1);
    throw new Exception("Command not supported by avast! Free Mobile Security");
  }

  public void a(com.avast.a.a.a.h paramh)
  {
  }

  protected void a(o paramo)
  {
  }

  protected void a(String paramString, Bundle paramBundle)
  {
  }

  protected boolean a()
  {
    return true;
  }

  public boolean a(String paramString1, String paramString2)
  {
    return true;
  }

  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      AccountReportService.b(this);
      AccountReportService.a(this);
    }
    while (true)
    {
      return;
      AccountReportService.b(this);
    }
  }

  protected void c()
  {
  }

  protected void d()
  {
    com.avast.android.generic.util.t.a("AvastMobileSecurity", "Initializing central service");
    com.avast.android.generic.util.t.a("AvastMobileSecurity", "Initializing central service successfully finished");
  }

  public void h()
  {
    u localu = u.a(this);
    String str = ((com.avast.android.mobilesecurity.t)ad.a(this, com.avast.android.mobilesecurity.t.class)).w();
    localu.a(y.k, null, str, null, null, null, null);
  }

  public void i()
  {
    u.a(this).a(y.l, null, null, null, null, null, null);
  }

  public boolean j()
  {
    return true;
  }

  public boolean k()
  {
    return true;
  }

  public int l()
  {
    return 2131493848;
  }

  public void m()
  {
  }

  public void n()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.service.CentralService
 * JD-Core Version:    0.6.2
 */