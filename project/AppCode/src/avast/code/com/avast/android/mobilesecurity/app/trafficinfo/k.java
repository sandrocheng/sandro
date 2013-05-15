package com.avast.android.mobilesecurity.app.trafficinfo;

import android.os.AsyncTask;
import android.support.v4.view.ViewPager;
import android.view.View;
import com.avast.android.generic.util.u;
import com.viewpagerindicator.a;

class k extends AsyncTask
{
  k(TrafficInfoPagerFragment paramTrafficInfoPagerFragment)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    return null;
  }

  protected void a(Void paramVoid)
  {
    if (TrafficInfoPagerFragment.b(this.a) != null)
      TrafficInfoPagerFragment.b(this.a).a(null);
    if (!this.a.isAdded());
    while (true)
    {
      return;
      TrafficInfoPagerFragment.c(this.a);
      if (TrafficInfoPagerFragment.d(this.a) == null)
        TrafficInfoPagerFragment.a(this.a, new n(this.a.getActivity(), this.a.getFragmentManager()));
      TrafficInfoPagerFragment.e(this.a).a(TrafficInfoPagerFragment.d(this.a));
      TrafficInfoPagerFragment.e(this.a).b(3);
      TrafficInfoPagerFragment.b(this.a).a(TrafficInfoPagerFragment.e(this.a));
      if (TrafficInfoPagerFragment.f(this.a) != null)
        TrafficInfoPagerFragment.e(this.a).a(TrafficInfoPagerFragment.f(this.a).a, false);
      TrafficInfoPagerFragment.b(this.a).a(new l(this));
      if (u.a(this.a.getActivity()))
        this.a.getView().findViewById(2131165568).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.k
 * JD-Core Version:    0.6.2
 */