package com.avast.android.mobilesecurity.app.campaign;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.view.View;

public abstract class PopupCampaignEvent extends CampaignEvent
{
  protected PopupCampaignEvent(Parcel paramParcel)
  {
    super(paramParcel);
  }

  protected PopupCampaignEvent(e parame, f paramf, Bundle paramBundle)
  {
    super(parame, paramf, paramBundle);
  }

  public abstract View a(Context paramContext, h paramh);

  public void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, CampaignWindowActivity.class);
    localIntent.addFlags(268435456);
    localIntent.putExtra("campaign_event", this);
    paramContext.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.PopupCampaignEvent
 * JD-Core Version:    0.6.2
 */