package com.avast.android.generic.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.KeyEvent;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.n;
import com.google.analytics.tracking.android.bo;

public class a
{
  protected Activity a;

  protected a(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public static a a(Activity paramActivity)
  {
    return new a(paramActivity);
  }

  public static void a(Fragment paramFragment)
  {
    if (paramFragment != null);
    try
    {
      FragmentActivity localFragmentActivity = paramFragment.getActivity();
      if (localFragmentActivity != null)
        localFragmentActivity.finish();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        t.a("AvastGeneric", "Error in finishing fragment activity", localException);
    }
  }

  public static void a(Fragment paramFragment, Runnable paramRunnable)
  {
    if ((paramFragment != null) && (paramRunnable != null));
    try
    {
      FragmentActivity localFragmentActivity = paramFragment.getActivity();
      if (localFragmentActivity != null)
        localFragmentActivity.runOnUiThread(paramRunnable);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        t.a("AvastGeneric", "Error in running on UI thread", localException);
    }
  }

  public void a()
  {
  }

  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      c();
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean a(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 16908332:
    }
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      c();
    }
  }

  public void b()
  {
  }

  @TargetApi(5)
  public void c()
  {
    int i = 1;
    String str1 = this.a.getPackageName();
    if ((!str1.equals("com.avast.android.antitheft")) && (!str1.equals("com.avast.android.at_play")) && (!str1.equals("com.avast.android.backup")));
    for (String str2 = "com.avast.android.mobilesecurity"; ; str2 = str1)
    {
      if (str1.equals("com.avast.android.backup"))
      {
        str2 = "com.avast.android.backup";
        if ((!str1.equals("com.avast.android.backup")) || (!z.a(this.a)))
          break label248;
        str1 = "com.avast.android.mobilesecurity";
        str2 = "com.avast.android.mobilesecurity";
      }
      while (true)
      {
        if (str2.equals("com.avast.android.at_play"))
          str2 = "com.avast.android.antitheft";
        if ((i == 0) && ((this.a instanceof com.avast.android.generic.ui.t)));
        while (true)
        {
          return;
          if (((!str1.equals("com.avast.android.antitheft")) && (!str1.equals("com.avast.android.at_play"))) || (!z.a(this.a)))
            break label248;
          str1 = "com.avast.android.mobilesecurity";
          str2 = "com.avast.android.mobilesecurity";
          break;
          com.avast.android.generic.util.ga.a.a().a("common", "avastLogoGoHome", this.a.getClass().getName(), Long.valueOf(0L));
          Intent localIntent = new Intent();
          localIntent.setComponent(new ComponentName(str1, str2 + ".app.home.HomeActivity"));
          localIntent.addFlags(67108864);
          this.a.startActivity(localIntent);
          if (!al.a())
            this.a.overridePendingTransition(n.b, n.a);
        }
        label248: i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.a
 * JD-Core Version:    0.6.2
 */