package com.avast.android.mobilesecurity.app.campaign;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;

public class CampaignWindowActivity extends Activity
{
  private PopupCampaignEvent a;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    this.a = ((PopupCampaignEvent)getIntent().getParcelableExtra("campaign_event"));
    if (this.a == null)
      finish();
    while (true)
    {
      return;
      FrameLayout localFrameLayout = (FrameLayout)findViewById(2131165279);
      View localView = this.a.a(this, new g(this));
      if (localView != null)
        localFrameLayout.addView(localView);
      else
        finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.CampaignWindowActivity
 * JD-Core Version:    0.6.2
 */