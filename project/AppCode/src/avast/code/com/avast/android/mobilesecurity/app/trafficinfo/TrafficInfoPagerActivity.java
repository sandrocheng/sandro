package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Context;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class TrafficInfoPagerActivity extends BaseSinglePaneActivity
{
  public static void call(Context paramContext)
  {
    ((BaseActivity)paramContext).a(TrafficInfoPagerActivity.class);
  }

  protected Fragment d()
  {
    return new TrafficInfoPagerFragment();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.TrafficInfoPagerActivity
 * JD-Core Version:    0.6.2
 */