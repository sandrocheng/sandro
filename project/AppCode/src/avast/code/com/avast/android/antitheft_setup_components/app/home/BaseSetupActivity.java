package com.avast.android.antitheft_setup_components.app.home;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.ae;

public abstract class BaseSetupActivity extends BaseSinglePaneActivity
{
  public static final IntentFilter a = g();
  private BaseSetupActivity.BaseActivityReceiver b = new BaseSetupActivity.BaseActivityReceiver(this);

  private static IntentFilter g()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.avast.android.antitheft_setup.FINISH_ALL_ACTIVITIES_ACTIVITY_ACTION");
    return localIntentFilter;
  }

  protected void a()
  {
    registerReceiver(this.b, a);
  }

  protected void b()
  {
    unregisterReceiver(this.b);
  }

  public void c()
  {
    Intent localIntent = new Intent("com.avast.android.antitheft_setup.FINISH_ALL_ACTIVITIES_ACTIVITY_ACTION");
    ae.a(localIntent);
    sendBroadcast(localIntent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
  }

  protected void onDestroy()
  {
    b();
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.BaseSetupActivity
 * JD-Core Version:    0.6.2
 */