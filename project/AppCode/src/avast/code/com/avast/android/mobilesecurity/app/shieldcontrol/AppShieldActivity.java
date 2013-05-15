package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class AppShieldActivity extends BaseSinglePaneActivity
{
  public static void call(BaseActivity paramBaseActivity)
  {
    if (paramBaseActivity != null)
      paramBaseActivity.a(AppShieldActivity.class);
  }

  protected Fragment d()
  {
    return new AppShieldFragment();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.AppShieldActivity
 * JD-Core Version:    0.6.2
 */