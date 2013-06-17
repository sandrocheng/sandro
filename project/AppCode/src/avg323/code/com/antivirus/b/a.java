package com.antivirus.b;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.antivirus.AVService;
import com.antivirus.c;
import com.antivirus.m;
import com.antivirus.ui.main.HandheldMainActivity;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.avg.toolkit.b.h;
import com.avg.ui.general.o;
import java.util.List;

public class a extends com.avg.toolkit.Marketing.a
{
  private com.avg.toolkit.UID.a c;

  public a(Context paramContext, com.avg.toolkit.e.a parama, com.avg.toolkit.UID.a parama1)
  {
    super(paramContext, parama);
    this.c = parama1;
  }

  public static void a(Context paramContext)
  {
    AVService.a(paramContext, 7000, 7004, null);
  }

  private void c(com.avg.toolkit.e.a parama)
  {
    int j;
    String str1;
    if (parama.a())
    {
      int i = c.i();
      j = parama.n;
      int k = i + 1;
      if ((k >= 0) && (k < c.c.length) && ((j == c.c[k]) || ((k < -1 + c.c.length) && (j < c.c[k]) && (j >= c.c[(k + 1)]))))
      {
        if (j != 1)
          break label257;
        str1 = m.a(this.a, 2131296678);
        if ((k < -1 + c.c.length) && (j < c.c[k]) && (j == c.c[(k + 1)]))
          k++;
        c.a(k);
        if (!o.c())
          break label295;
      }
    }
    label257: label295: for (Intent localIntent = new Intent(this.a, DualPaneActivity.class); ; localIntent = new Intent(this.a, HandheldMainActivity.class))
    {
      localIntent.putExtra("from_notification", 1);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 0);
      String str2 = m.a(this.a, 2131296676);
      Notification localNotification = new Notification(2130837609, str2, 0L);
      localNotification.defaults = (0x4 | localNotification.defaults);
      localNotification.flags = 16;
      localNotification.setLatestEventInfo(this.a, str2, str1, localPendingIntent);
      ((NotificationManager)this.a.getSystemService("notification")).notify(13, localNotification);
      return;
      str1 = m.a(this.a, 2131296677).replace("[number]", "" + j);
      break;
    }
  }

  public void a()
  {
    try
    {
      com.avg.toolkit.c.a.a(this.a, "category_upgrade", "antivirusPro", null, 0);
      String str = this.c.a();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("/purchase/dispatch?device_sn=");
      if (TextUtils.isEmpty(str))
        str = "";
      localStringBuilder.append(str);
      localStringBuilder.append("&varCode=");
      localStringBuilder.append(this.b.o);
      localStringBuilder.append("&fs=");
      localStringBuilder.append(this.b.p);
      a(localStringBuilder.toString(), false);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    c(parama);
  }

  public void a(String paramString, boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addCategory("android.intent.category.BROWSABLE");
    if (paramBoolean)
    {
      localIntent.setPackage("com.android.browser");
      localIntent.putExtra("com.android.browser.application_id", "com.android.browser");
    }
    localIntent.setFlags(335544320);
    h localh = new h(this.a);
    StringBuilder localStringBuilder = new StringBuilder().append(localh.b());
    if (paramString != null);
    while (true)
    {
      localIntent.setData(Uri.parse(paramString));
      if (this.a.getPackageManager().queryIntentActivities(localIntent, 0).size() == 0)
      {
        localIntent.setPackage(null);
        localIntent.removeExtra("com.android.browser.application_id");
      }
      this.a.startActivity(localIntent);
      return;
      paramString = "";
    }
  }

  public void b(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int j = paramBundle.getInt("__SAC2", -1);
      i = j;
      switch (i)
      {
      default:
        super.b(paramBundle);
        return;
      case 7004:
      case 7002:
      case 7003:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        a();
        continue;
        a(paramBundle.getString("__SAD"), false);
        continue;
        a(paramBundle.getString("__SAD"), true);
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
    c.a(-1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.b.a
 * JD-Core Version:    0.6.2
 */