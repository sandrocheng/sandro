package com.avast.android.mobilesecurity.app.scanner;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.avast.android.generic.NotificationIntentService;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.AvastPendingIntent;
import com.avast.android.generic.notification.a;
import com.avast.android.generic.notification.j;
import com.avast.android.mobilesecurity.engine.ab;
import com.avast.android.mobilesecurity.engine.ac;
import com.avast.android.mobilesecurity.engine.ah;
import com.avast.android.mobilesecurity.engine.ak;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.engine.r;
import com.avast.android.mobilesecurity.engine.x;
import java.io.File;

public class ReportService extends NotificationIntentService
  implements r
{
  private Handler a;
  private j b;
  private a c;
  private long d;

  public ReportService()
  {
    super("report service");
  }

  public static void a(Context paramContext, Uri paramUri, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Intent localIntent = new Intent(paramContext, ReportService.class);
    localIntent.setData(paramUri);
    localIntent.putExtra("description", paramString3);
    localIntent.putExtra("email", paramString4);
    localIntent.putExtra("result", paramString1);
    if (TextUtils.isEmpty(paramString2))
      paramString2 = paramContext.getString(2131493168);
    localIntent.putExtra("infectionType", paramString2);
    paramContext.startService(localIntent);
  }

  protected a a(Intent paramIntent)
  {
    if (this.c == null)
    {
      Intent localIntent = new Intent(this, ReportDialogActivity.class);
      localIntent.setFlags(268435456);
      Bundle localBundle = new Bundle(paramIntent.getExtras());
      localBundle.putInt("notificationId", 2131427337);
      localBundle.putString("uploadInProgress", "true");
      localIntent.replaceExtras(localBundle);
      AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(com.avast.android.generic.notification.s.a, localIntent);
      a locala = new a(2131427337L, getText(2131493472));
      locala.a(getText(2131493465), getText(2131493472), localAvastPendingIntent);
      locala.f = 2;
      locala.b = 100L;
      locala.c = 0L;
      this.c = locala;
    }
    return this.c;
  }

  public void a(long paramLong1, long paramLong2)
  {
    long l = System.currentTimeMillis();
    if (l - this.d > 1000L)
    {
      this.d = l;
      this.a.post(new n(this, paramLong2, paramLong1));
    }
  }

  protected void b(Intent paramIntent)
  {
    Uri localUri = paramIntent.getData();
    ab localab = new ab(paramIntent.getStringExtra("description"), paramIntent.getStringExtra("email"));
    Object localObject;
    if ("file".equals(localUri.getScheme()))
    {
      com.avast.android.mobilesecurity.engine.s locals1 = new com.avast.android.mobilesecurity.engine.s(x.a(Integer.parseInt(paramIntent.getStringExtra("result"))), paramIntent.getStringExtra("infectionType"));
      localObject = i.a(this, new File(localUri.getPath()), null, locals1, localab, this);
      if (localObject != ac.a)
        break label299;
      this.a.post(new l(this));
    }
    while (true)
    {
      while (true)
      {
        return;
        if (!"package".equals(localUri.getScheme()))
          break label249;
        com.avast.android.mobilesecurity.engine.s locals2 = new com.avast.android.mobilesecurity.engine.s(x.a(Integer.parseInt(paramIntent.getStringExtra("result"))), paramIntent.getStringExtra("infectionType"));
        String str = localUri.toString().substring("package:".length());
        try
        {
          PackageInfo localPackageInfo = getPackageManager().getPackageInfo(str, 0);
          ac localac = i.a(this, new File(localPackageInfo.applicationInfo.sourceDir), localPackageInfo, locals2, localab, this);
          localObject = localac;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          localObject = ac.d;
          com.avast.android.generic.util.m.e("cannot find packageinfo for " + str);
        }
      }
      break;
      label249: ah localah = new ah(ak.a(Integer.parseInt(paramIntent.getStringExtra("result"))), paramIntent.getStringExtra("infectionType"), paramIntent.getStringExtra("desiredSite"));
      localObject = i.a(this, localUri.toString(), localah, localab);
      break;
      label299: Intent localIntent = new Intent(this, ReportDialogActivity.class);
      localIntent.setFlags(268435456);
      Bundle localBundle = new Bundle(paramIntent.getExtras());
      localBundle.putInt("notificationId", 2131427338);
      localBundle.putString("submitResult", "" + ((ac)localObject).ordinal());
      localIntent.setData(localUri);
      localIntent.replaceExtras(localBundle);
      AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(com.avast.android.generic.notification.s.a, localIntent);
      a locala = new a(2131427338L, getText(2131493469));
      locala.a(getText(2131493469), getText(ai.a((ac)localObject)), localAvastPendingIntent);
      this.a.post(new m(this, locala));
    }
  }

  public void onCreate()
  {
    super.onCreate();
    this.a = new Handler();
    this.b = ((j)ad.a(this, j.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ReportService
 * JD-Core Version:    0.6.2
 */