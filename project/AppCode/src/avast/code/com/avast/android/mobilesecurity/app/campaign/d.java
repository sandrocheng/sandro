package com.avast.android.mobilesecurity.app.campaign;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.u;
import com.avast.android.mobilesecurity.app.campaign.types.SecureLineNotification;
import com.avast.android.mobilesecurity.app.campaign.types.SecureLinePopup;
import com.avast.android.mobilesecurity.engine.i;
import com.google.analytics.tracking.android.bo;

class d extends AsyncTask
{
  private bo b;

  private d(b paramb)
  {
  }

  private void a(WifiInfo paramWifiInfo)
  {
    CampaignEvent localCampaignEvent1 = b(paramWifiInfo);
    com.avast.android.mobilesecurity.engine.a locala1 = i.a(b.a(this.a), Integer.valueOf(0), localCampaignEvent1);
    if ((locala1.a) && (locala1.b) && (locala1.d) && (b.a(this.a, localCampaignEvent1)))
    {
      m.c("CampaignEventHandler: showing SecureLine campaign popup");
      localCampaignEvent1.a(b.a(this.a));
      this.b.a("ms-Campaigns", "SecureLine", "popup", Long.valueOf(1L));
      CampaignEvent localCampaignEvent2 = c(paramWifiInfo);
      com.avast.android.mobilesecurity.engine.a locala2 = i.a(b.a(this.a), Integer.valueOf(0), localCampaignEvent2);
      if ((!locala2.a) || (!locala2.b) || (!locala2.c) || (!b.a(this.a, localCampaignEvent2)))
        break label198;
      m.c("CampaignEventHandler: showing SecureLine campaign notification");
      localCampaignEvent2.a(b.a(this.a));
      this.b.a("ms-Campaigns", "SecureLine", "notification", Long.valueOf(1L));
    }
    while (true)
    {
      return;
      m.c("CampaignEventHandler: SecureLine popup campaign blocked for this wifi/device.");
      break;
      label198: m.c("CampaignEventHandler: SecureLine notification campaign blocked for this wifi/device.");
    }
  }

  private CampaignEvent b(WifiInfo paramWifiInfo)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("ssid", paramWifiInfo.getSSID());
    return new SecureLinePopup(e.a, localBundle);
  }

  private CampaignEvent c(WifiInfo paramWifiInfo)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("ssid", paramWifiInfo.getSSID());
    return new SecureLineNotification(e.a, localBundle);
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    m.c("CampaignEventHandler: handling connectivity changed");
    if (u.b(b.a(this.a)))
    {
      WifiInfo localWifiInfo = ((WifiManager)b.a(this.a).getSystemService("wifi")).getConnectionInfo();
      boolean bool = u.c(b.a(this.a));
      m.c("CampaignEventHandler: wifi: " + localWifiInfo.getSSID() + ", unsecured: " + bool);
      if (bool)
      {
        this.b = com.avast.android.generic.util.ga.a.a();
        this.b.a("ms-Campaigns", "unsecured wifi", localWifiInfo.getSSID(), Long.valueOf(1L));
        a(localWifiInfo);
      }
    }
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.d
 * JD-Core Version:    0.6.2
 */