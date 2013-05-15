package com.avast.android.mobilesecurity.app.advisor;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;
import com.avast.android.mobilesecurity.e;

public class AdvisorAppsActivity extends BaseSinglePaneActivity
{
  public static void call(Context paramContext, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(e.a(paramLong));
    ((BaseActivity)paramContext).a(localIntent);
  }

  protected Fragment d()
  {
    return new AdvisorAppsFragment();
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.AdvisorAppsActivity
 * JD-Core Version:    0.6.2
 */