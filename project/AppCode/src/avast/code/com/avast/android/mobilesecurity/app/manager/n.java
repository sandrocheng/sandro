package com.avast.android.mobilesecurity.app.manager;

import android.os.AsyncTask;
import android.support.v4.view.ViewPager;
import com.viewpagerindicator.a;

class n extends AsyncTask
{
  n(ManagerPagerFragment paramManagerPagerFragment)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    return null;
  }

  protected void a(Void paramVoid)
  {
    if (ManagerPagerFragment.b(this.a) != null)
      ManagerPagerFragment.b(this.a).a(null);
    if (!this.a.isAdded());
    while (true)
    {
      return;
      ManagerPagerFragment.c(this.a);
      if (ManagerPagerFragment.d(this.a) == null)
        ManagerPagerFragment.a(this.a, new q(this.a.getActivity(), this.a.getFragmentManager(), ManagerPagerFragment.e(this.a)));
      ManagerPagerFragment.f(this.a).a(ManagerPagerFragment.d(this.a));
      ManagerPagerFragment.b(this.a).a(ManagerPagerFragment.f(this.a));
      if (ManagerPagerFragment.g(this.a) != null)
        ManagerPagerFragment.f(this.a).a(ManagerPagerFragment.g(this.a).a, false);
      ManagerPagerFragment.b(this.a).a(new o(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.n
 * JD-Core Version:    0.6.2
 */