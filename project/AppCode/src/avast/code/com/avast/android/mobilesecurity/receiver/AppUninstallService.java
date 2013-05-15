package com.avast.android.mobilesecurity.receiver;

import android.app.IntentService;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.advisor.AdvisorScanService;
import com.avast.android.mobilesecurity.engine.d;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.t;

public class AppUninstallService extends IntentService
{
  public AppUninstallService()
  {
    super("AppUninstallService");
  }

  public static void a(Context paramContext, Uri paramUri, String paramString, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramContext, AppUninstallService.class);
    localIntent.setData(paramUri);
    localIntent.setAction(paramString);
    localIntent.putExtras(paramBundle);
    paramContext.startService(localIntent);
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    Uri localUri = paramIntent.getData();
    if ((localUri == null) || (!"package".equals(localUri.getScheme())));
    label152: 
    while (true)
    {
      return;
      String str = localUri.toString().substring("package:".length());
      m.c("removing uninstalled app " + str);
      int i = getContentResolver().delete(q.b(), "packageName = ?", new String[] { str });
      t localt = (t)ad.a(this, t.class);
      if (i > 0)
      {
        localt.ao();
        i.a(this, null, str, null, d.c);
      }
      while (true)
      {
        if ((!paramIntent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) || (paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false)))
          break label152;
        AdvisorScanService.a(this, str);
        break;
        if (i < 0)
          localt.aq();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.AppUninstallService
 * JD-Core Version:    0.6.2
 */