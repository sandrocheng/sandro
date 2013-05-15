package com.avast.android.antitheft_setup_components.app.home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class BaseSetupActivity$BaseActivityReceiver extends BroadcastReceiver
{
  public BaseSetupActivity$BaseActivityReceiver(BaseSetupActivity paramBaseSetupActivity)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.avast.android.antitheft_setup.FINISH_ALL_ACTIVITIES_ACTIVITY_ACTION"))
      this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.BaseSetupActivity.BaseActivityReceiver
 * JD-Core Version:    0.6.2
 */