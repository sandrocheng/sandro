package com.avast.android.mobilesecurity.app.campaign;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;

public abstract class NotificationCampaignEvent extends CampaignEvent
{
  protected NotificationCampaignEvent(Parcel paramParcel)
  {
    super(paramParcel);
  }

  protected NotificationCampaignEvent(e parame, f paramf, Bundle paramBundle)
  {
    super(parame, paramf, paramBundle);
  }

  public void a(Context paramContext)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = b(paramContext);
    if (localNotification != null)
      localNotificationManager.notify("campaign_notification", b().a(), localNotification);
  }

  protected abstract Notification b(Context paramContext);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.NotificationCampaignEvent
 * JD-Core Version:    0.6.2
 */