package com.avast.android.mobilesecurity.app.home;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;

class d
  implements FragmentManager.OnBackStackChangedListener
{
  d(HomeActivity paramHomeActivity)
  {
  }

  public void onBackStackChanged()
  {
    if ((this.a.getSupportFragmentManager().getBackStackEntryCount() == 0) && (!HomeActivity.a(this.a)))
      HomeActivity.b(this.a);
    HomeActivity.a(this.a, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.d
 * JD-Core Version:    0.6.2
 */