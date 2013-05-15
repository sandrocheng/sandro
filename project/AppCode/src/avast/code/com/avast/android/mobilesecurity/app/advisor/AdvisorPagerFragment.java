package com.avast.android.mobilesecurity.app.advisor;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v4.view.x;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.avast.android.generic.ui.BaseMultiPaneActivity;
import com.avast.android.generic.ui.af;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.ui.m;
import com.viewpagerindicator.TabPageIndicator;
import com.viewpagerindicator.a;

public class AdvisorPagerFragment extends TrackedFragment
  implements af
{
  private a a;
  private ViewPager b;
  private x c;
  private SharedPreferences d;
  private boolean e;
  private AdvisorPagerFragment.RetainFragment f;

  private static String a(int paramInt1, int paramInt2)
  {
    return "android:switcher:" + paramInt1 + ":" + paramInt2;
  }

  private void c()
  {
    TabPageIndicator localTabPageIndicator = new TabPageIndicator(new ContextThemeWrapper(getActivity(), 2131558573));
    ((FrameLayout)getView().findViewById(2131165383)).addView(localTabPageIndicator, new FrameLayout.LayoutParams(-1, -2));
    this.a = localTabPageIndicator;
  }

  private void d()
  {
    int i = 0;
    if ((getActivity() != null) && (this.c != null) && (!this.e))
    {
      FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
      int j = 0;
      while (i < this.c.getCount())
      {
        Fragment localFragment = getFragmentManager().findFragmentByTag(a(this.b.getId(), i));
        if (localFragment != null)
        {
          localFragmentTransaction.detach(localFragment);
          j = 1;
        }
        i++;
      }
      if (j != 0)
        localFragmentTransaction.commitAllowingStateLoss();
    }
  }

  public String a()
  {
    return "/ms/appAdvisor";
  }

  public int a_()
  {
    return 2131493355;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.f = ((AdvisorPagerFragment.RetainFragment)getFragmentManager().findFragmentByTag("advisor_pager_retained"));
    if (this.f == null)
    {
      this.f = new AdvisorPagerFragment.RetainFragment();
      this.f.a = this.d.getInt("selected_tab", 0);
      getFragmentManager().beginTransaction().add(this.f, "advisor_pager_retained").commit();
    }
    b.a(new d(this), new Void[0]);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = getActivity().getPreferences(0);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.e = false;
    return paramLayoutInflater.inflate(2130903095, paramViewGroup, false);
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    if ((getActivity() instanceof BaseMultiPaneActivity))
      d();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    this.e = true;
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((ViewPager)paramView.findViewById(2131165384));
    m.a(getActivity(), this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.AdvisorPagerFragment
 * JD-Core Version:    0.6.2
 */