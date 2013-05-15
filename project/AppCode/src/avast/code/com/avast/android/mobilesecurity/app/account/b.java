package com.avast.android.mobilesecurity.app.account;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import com.avast.android.generic.internet.c.g;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.t;

class b extends AsyncTask
{
  private t a;
  private Context b;

  public b(t paramt, Context paramContext)
  {
    this.a = paramt;
    this.b = paramContext;
  }

  private void a()
  {
    m.b("AvastAccountReportService", "Report successfully sent.");
  }

  private void b()
  {
    m.b("AvastAccountReportService", "Report sending failed.");
  }

  protected Boolean a(Object[] paramArrayOfObject)
  {
    String str = ServerAddressHelper.getStatusServerAddress(this.b);
    Bundle localBundle = new Bundle();
    if (!TextUtils.isEmpty(str))
      localBundle.putString("my_avast_status_server_address", str);
    try
    {
      localc = new com.avast.android.generic.internet.c.c(this.b, localBundle);
      localc1 = new c(localc, this.a, this.b);
      m.b("AvastAccountReportService", "Sending the report.");
    }
    catch (InstantiationException localInstantiationException)
    {
      try
      {
        com.avast.android.generic.internet.c.c localc;
        c localc1;
        boolean bool2 = localc1.a();
        bool1 = bool2;
        localc.a();
        for (Boolean localBoolean = Boolean.valueOf(bool1); ; localBoolean = Boolean.valueOf(false))
        {
          return localBoolean;
          localInstantiationException = localInstantiationException;
          m.c("AvastAccountReportService", "Status report sending failed.", localInstantiationException);
        }
      }
      catch (g localg)
      {
        while (true)
        {
          m.c("AvastAccountReportService", "Could not send Avast account status information.", localg);
          bool1 = false;
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        while (true)
        {
          m.c("AvastAccountReportService", "Could not send Avast account status information.", localIllegalStateException);
          boolean bool1 = false;
        }
      }
    }
  }

  protected void a(Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue())
      a();
    while (true)
    {
      return;
      b();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.b
 * JD-Core Version:    0.6.2
 */