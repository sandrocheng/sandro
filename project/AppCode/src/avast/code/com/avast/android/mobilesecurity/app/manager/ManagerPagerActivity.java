package com.avast.android.mobilesecurity.app.manager;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseMultiPaneActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;
import com.avast.android.mobilesecurity.app.home.StartActivity;

public class ManagerPagerActivity extends BaseSinglePaneActivity
{
  public static void call(Context paramContext)
  {
    call(paramContext, null);
  }

  public static void call(Context paramContext, int paramInt)
  {
    Bundle localBundle = null;
    if (paramInt > -1)
    {
      localBundle = new Bundle();
      localBundle.putInt("mOrder", paramInt);
    }
    call(paramContext, localBundle);
  }

  public static void call(Context paramContext, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramContext, ManagerPagerActivity.class);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    if (((paramContext instanceof BaseSinglePaneActivity)) || ((paramContext instanceof BaseMultiPaneActivity)))
      ((BaseActivity)paramContext).a(localIntent);
    while (true)
    {
      return;
      StartActivity.a(paramContext, localIntent);
    }
  }

  protected Fragment d()
  {
    return new ManagerPagerFragment();
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
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.ManagerPagerActivity
 * JD-Core Version:    0.6.2
 */