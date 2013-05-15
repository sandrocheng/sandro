package com.avast.android.mobilesecurity.app.firewall;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;

public class FirewallActivity extends BaseSinglePaneActivity
{
  public static String a = "extra_toggle_onoff";

  public static void call(Context paramContext)
  {
    ((BaseActivity)paramContext).a(FirewallActivity.class);
  }

  protected Fragment d()
  {
    return new FirewallFragment();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.FirewallActivity
 * JD-Core Version:    0.6.2
 */