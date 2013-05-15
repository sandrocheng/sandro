package com.avast.android.mobilesecurity.app.advisor;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;
import com.avast.android.mobilesecurity.scan.ScanActivity;

public class AdvisorPagerActivity extends BaseSinglePaneActivity
{
  public static void call(Context paramContext)
  {
    ((BaseActivity)paramContext).a(AdvisorPagerActivity.class);
    if (!((ae)ad.a(paramContext, ae.class)).b("paDone", false))
      ScanActivity.call(paramContext, AdvisorScanService.class, null, paramContext.getString(2131493355));
  }

  protected Fragment d()
  {
    return new AdvisorPagerFragment();
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
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.AdvisorPagerActivity
 * JD-Core Version:    0.6.2
 */