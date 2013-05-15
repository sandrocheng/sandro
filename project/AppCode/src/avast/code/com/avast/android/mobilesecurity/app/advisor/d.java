package com.avast.android.mobilesecurity.app.advisor;

import android.os.AsyncTask;
import android.support.v4.view.ViewPager;
import android.support.v4.view.x;
import android.view.View;
import com.viewpagerindicator.a;

class d extends AsyncTask
{
  d(AdvisorPagerFragment paramAdvisorPagerFragment)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    return null;
  }

  protected void a(Void paramVoid)
  {
    if (AdvisorPagerFragment.a(this.a) != null)
      AdvisorPagerFragment.a(this.a).a(null);
    if (!this.a.isAdded());
    while (true)
    {
      return;
      AdvisorPagerFragment.b(this.a);
      if (AdvisorPagerFragment.c(this.a) == null)
        AdvisorPagerFragment.a(this.a, new f(this.a.getActivity(), this.a.getFragmentManager()));
      AdvisorPagerFragment.d(this.a).a(AdvisorPagerFragment.c(this.a));
      AdvisorPagerFragment.a(this.a).a(AdvisorPagerFragment.d(this.a));
      if (AdvisorPagerFragment.e(this.a) != null)
        AdvisorPagerFragment.d(this.a).a(AdvisorPagerFragment.e(this.a).a, false);
      AdvisorPagerFragment.a(this.a).a(new e(this));
      if (AdvisorPagerFragment.c(this.a).getCount() <= 1)
        this.a.getView().findViewById(2131165383).setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.d
 * JD-Core Version:    0.6.2
 */