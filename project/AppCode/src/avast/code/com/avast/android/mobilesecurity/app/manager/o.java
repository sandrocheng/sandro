package com.avast.android.mobilesecurity.app.manager;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bk;
import android.widget.Button;

class o
  implements bk
{
  o(n paramn)
  {
  }

  public void a(int paramInt)
  {
    ManagerPagerFragment.g(this.a.a).a = paramInt;
    ManagerPagerFragment.h(this.a.a).edit().putInt("selected_tab", paramInt).commit();
    ManagerAppFragment localManagerAppFragment = (ManagerAppFragment)this.a.a.getFragmentManager().findFragmentByTag(ManagerPagerFragment.a(ManagerPagerFragment.f(this.a.a).getId(), paramInt));
    if (localManagerAppFragment != null)
      ManagerPagerFragment.j(this.a.a).setText(ManagerPagerFragment.i(this.a.a)[localManagerAppFragment.c()]);
  }

  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public void b(int paramInt)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.o
 * JD-Core Version:    0.6.2
 */