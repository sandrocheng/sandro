package com.avast.android.mobilesecurity.app.messageshield;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.mobilesecurity.app.filter.core.g;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.engine.o;
import com.avast.android.mobilesecurity.t;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class k extends AsyncTask
{
  private Context a;
  private a b;
  private b c;
  private MessageToScan d;

  public k(Context paramContext, a parama, b paramb)
  {
    this.a = paramContext;
    this.b = parama;
    this.c = paramb;
  }

  private void a()
  {
    a(null);
  }

  private void a(List paramList)
  {
    com.avast.android.generic.util.m.c("NewMessageScanTask: Remote scanning of message from: " + this.d.f + " in background.");
    com.avast.android.mobilesecurity.engine.k localk = this.b.b(this.d.f, this.d.g, this.d.h, this.d.e);
    com.avast.android.mobilesecurity.engine.l locall;
    if ((localk.a != null) && (!localk.a.isEmpty()))
    {
      locall = (com.avast.android.mobilesecurity.engine.l)localk.a.get(0);
      com.avast.android.generic.util.m.c("NewMessageScanTask: Result for message from: " + this.d.f + ", " + locall.a.toString());
      if (!a.a(localk))
        break label218;
      com.avast.android.generic.util.m.c("NewMessageScanTask: Showing message shield for message from: " + this.d.f);
      c.a(this.a, this.d, null, localk, 268435456);
    }
    while (true)
    {
      return;
      locall = new com.avast.android.mobilesecurity.engine.l(o.a, "");
      break;
      label218: if (a.b(localk))
      {
        com.avast.android.generic.util.m.c("NewMessageScanTask: The scan result of message with uuid: " + this.d.b + " has errors.");
        b(paramList);
      }
    }
  }

  private void b(List paramList)
  {
    if (paramList == null)
    {
      n localn = new n(this, new m(this, new l(this)));
      g.b(this.a, this.d.b, this.d.f, this.d.h, localn);
    }
    while (true)
    {
      return;
      c(paramList);
    }
  }

  private void c(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      long l = ((Long)localIterator.next()).longValue();
      com.avast.android.generic.util.m.c("NewMessageScanTask: Saving message from: " + this.d.f + " for later rescan, message id: " + l);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("uuid", this.d.b);
      localContentValues.put("message_id", Long.valueOf(l));
      localContentValues.put("date", Long.valueOf(this.d.i));
      localContentValues.put("scan_attempts", Integer.valueOf(1));
      localContentValues.put("type", Short.valueOf(this.d.e.a()));
      this.a.getContentResolver().insert(com.avast.android.mobilesecurity.p.a(), localContentValues);
    }
  }

  protected Void a(MessageToScan[] paramArrayOfMessageToScan)
  {
    int i = 1;
    this.d = paramArrayOfMessageToScan[0];
    if (TextUtils.isEmpty(this.d.f));
    while (true)
    {
      return null;
      com.avast.android.generic.util.m.c("NewMessageScanTask: Local scanning of message from: " + this.d.f + " in background.");
      com.avast.android.mobilesecurity.engine.k localk = this.b.a(this.d.f, this.d.g, this.d.h, this.d.e);
      u.a(this.a).a(y.u, null, this.d.f, null, null, null, null);
      com.avast.android.mobilesecurity.engine.l locall = a.c(localk);
      com.avast.android.generic.util.m.c("NewMessageScanTask: Result for message from: " + this.d.f + ", " + locall.a.toString());
      ((t)ad.a(this.a, t.class)).ay();
      this.c.a(this.d.b, locall.a);
      if ((locall.a == o.j) || (locall.a == o.k) || (locall.a == o.i) || (locall.a == o.h) || ((locall.a == o.g) && (localk.b != null) && (!localk.b.isEmpty())));
      for (int j = i; ; j = 0)
      {
        if (j == 0)
          break label347;
        com.avast.android.generic.util.m.c("NewMessageScanTask: Showing message shield for message from: " + this.d.f);
        c.a(this.a, this.d, null, localk, 268435456);
        break;
      }
      label347: NetworkInfo localNetworkInfo = ((ConnectivityManager)this.a.getSystemService("connectivity")).getActiveNetworkInfo();
      int k;
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
      {
        k = i;
        label381: if (localNetworkInfo == null)
          break label445;
      }
      try
      {
        if (localNetworkInfo.isRoaming())
        {
          if (!localNetworkInfo.isRoaming())
            break label445;
          int m = Settings.Secure.getInt(this.a.getContentResolver(), "data_roaming");
          if (m != i)
            break label445;
        }
        while (true)
        {
          if ((k == 0) || (i == 0))
            break label464;
          a();
          break;
          k = 0;
          break label381;
          label445: i = 0;
        }
      }
      catch (Settings.SettingNotFoundException localSettingNotFoundException)
      {
        while (true)
          com.avast.android.generic.util.m.b("NewMessageScanTask: Could not read the roaming settings.", localSettingNotFoundException);
        label464: com.avast.android.generic.util.m.c("NewMessageScanTask: Connection not available.");
        b(null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.k
 * JD-Core Version:    0.6.2
 */