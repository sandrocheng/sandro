package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class FileShieldActivity extends BaseSinglePaneActivity
{
  public static void call(BaseActivity paramBaseActivity)
  {
    if (paramBaseActivity != null)
      paramBaseActivity.a(FileShieldActivity.class);
  }

  protected Fragment d()
  {
    return new FileShieldFragment();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.FileShieldActivity
 * JD-Core Version:    0.6.2
 */