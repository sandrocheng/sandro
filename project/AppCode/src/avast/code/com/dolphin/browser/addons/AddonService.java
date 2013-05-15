package com.dolphin.browser.addons;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.RingtoneManager;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

public abstract class AddonService extends Service
{
  private static AddonService a;
  private SparseArray b = new SparseArray();
  private SparseArray c = new SparseArray();
  private int d;
  private final Handler e = new d(this, null);
  private final Messenger f = new Messenger(this.e);
  private final ah g = new b(this);
  private long h;

  private PendingIntent a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    localIntent.addFlags(268435456);
    return PendingIntent.getActivity(paramContext, paramString.hashCode(), localIntent, 134217728);
  }

  private void a(Message paramMessage, h paramh)
  {
    int i = paramMessage.what;
    bo localbo = (bo)this.c.get(i);
    if (localbo != null)
      localbo.a(paramh);
  }

  private void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return;
      try
      {
        JSONObject localJSONObject1 = new JSONObject(paramString);
        if ("Notification".equals(localJSONObject1.optString("action")))
        {
          JSONObject localJSONObject2 = localJSONObject1.optJSONObject("value");
          if ("OpenURL".equals(localJSONObject2.optString("clickAction")))
          {
            String str1 = localJSONObject2.optString("title");
            String str2 = localJSONObject2.optString("description");
            String str3 = localJSONObject2.optJSONObject("clickValue").getString("url");
            NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
            Notification localNotification = new Notification();
            localNotification.icon = 17301642;
            localNotification.setLatestEventInfo(this, str1, str2, a(this, str3));
            localNotification.when = System.currentTimeMillis();
            localNotification.flags = (0x10 | localNotification.flags);
            localNotification.sound = RingtoneManager.getDefaultUri(2);
            localNotificationManager.notify(paramString.hashCode(), localNotification);
          }
        }
      }
      catch (Exception localException)
      {
      }
    }
  }

  private final int b()
  {
    int i = Binder.getCallingPid();
    if ((i == 0) || (Process.myPid() == i))
      i = this.d;
    return i;
  }

  private h c()
  {
    int i = b();
    h localh = (h)this.b.get(i);
    if (localh == null)
    {
      localh = new h(i);
      this.b.put(i, localh);
    }
    return localh;
  }

  private void d()
  {
    if (checkPermission("android.permission.INTERNET", Process.myPid(), Process.myUid()) == -1);
    while (true)
    {
      return;
      SharedPreferences localSharedPreferences = getSharedPreferences("update", 0);
      this.h = localSharedPreferences.getLong("lct", 0L);
      long l = System.currentTimeMillis();
      if (l - this.h >= 86400000L)
      {
        this.h = l;
        localSharedPreferences.edit().putLong("lct", l).commit();
        new c(this).execute(new Void[0]);
      }
    }
  }

  private String e()
  {
    try
    {
      PackageInfo localPackageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
      String str2 = Uri.parse("http://pnsen.dolphin-browser.com/notification/android").buildUpon().appendPath("message.json").appendQueryParameter("pname", getPackageName()).appendQueryParameter("version", String.valueOf(localPackageInfo.versionCode)).appendQueryParameter("locale", Locale.getDefault().toString()).appendQueryParameter("t", "0").toString();
      HttpResponse localHttpResponse = new DefaultHttpClient().execute(new HttpGet(str2));
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        String str3 = EntityUtils.toString(localHttpResponse.getEntity());
        str1 = str3;
        return str1;
      }
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = null;
    }
  }

  public h a()
  {
    int i = b();
    return (h)this.b.get(i);
  }

  protected abstract void a(h paramh);

  protected abstract void b(h paramh);

  public final IBinder onBind(Intent paramIntent)
  {
    return this.g.asBinder();
  }

  public void onCreate()
  {
    a = this;
    d();
  }

  public void onDestroy()
  {
    a = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.AddonService
 * JD-Core Version:    0.6.2
 */