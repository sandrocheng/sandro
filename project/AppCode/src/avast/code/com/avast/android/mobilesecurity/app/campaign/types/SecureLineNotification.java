package com.avast.android.mobilesecurity.app.campaign.types;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.app.NotificationCompat.Builder;
import com.avast.android.mobilesecurity.app.campaign.NotificationCampaignEvent;
import com.avast.android.mobilesecurity.app.campaign.e;
import com.avast.android.mobilesecurity.app.campaign.f;
import java.util.List;

public class SecureLineNotification extends NotificationCampaignEvent
{
  public SecureLineNotification(Parcel paramParcel)
  {
    super(paramParcel);
  }

  public SecureLineNotification(e parame, Bundle paramBundle)
  {
    super(parame, f.a, paramBundle);
  }

  public String a(String paramString)
  {
    return paramString + ";" + c().getString("ssid");
  }

  public void a(Context paramContext)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = b(paramContext);
    if (localNotification != null)
      localNotificationManager.notify("secure_line_campaign", 0, localNotification);
  }

  public boolean a(Context paramContext, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.avast.android.vpn", 0);
      bool2 = false;
      if (localPackageInfo != null)
        return bool2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        boolean bool1 = paramString.contains(c().getString("ssid"));
        boolean bool2 = false;
        if (!bool1)
          bool2 = true;
      }
    }
  }

  protected Notification b(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.avast.android.vpn"));
    if (paramContext.getPackageManager().queryIntentActivities(localIntent, 65536).size() <= 0)
      localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.avast.com/secure-line-vpn"));
    localIntent.addFlags(268435456);
    PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, localIntent, 268435456);
    NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(paramContext);
    localBuilder.setTicker(paramContext.getString(2131494131));
    localBuilder.setContentTitle(paramContext.getString(2131494131));
    localBuilder.setContentText(paramContext.getString(2131494136));
    localBuilder.setContentIntent(localPendingIntent);
    localBuilder.setAutoCancel(true);
    localBuilder.setSmallIcon(2130837787);
    localBuilder.setLights(Color.parseColor("#ff9900"), 300, 1000);
    return localBuilder.getNotification();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.types.SecureLineNotification
 * JD-Core Version:    0.6.2
 */