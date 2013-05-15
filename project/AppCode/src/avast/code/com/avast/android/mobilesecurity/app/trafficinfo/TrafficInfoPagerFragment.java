package com.avast.android.mobilesecurity.app.trafficinfo;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
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
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.BaseMultiPaneActivity;
import com.avast.android.generic.ui.af;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.t;
import com.viewpagerindicator.TabPageIndicator;

public class TrafficInfoPagerFragment extends TrackedFragment
  implements af
{
  private com.viewpagerindicator.a a;
  private ViewPager b;
  private x c;
  private t d;
  private SharedPreferences e;
  private boolean f;
  private TrafficInfoPagerFragment.RetainFragment g;
  private int h = 11;
  private String[] i;
  private Button j;
  private boolean k;

  private static String a(int paramInt1, int paramInt2)
  {
    return "android:switcher:" + paramInt1 + ":" + paramInt2;
  }

  private void a(int paramInt)
  {
    this.h = paramInt;
    switch (this.h)
    {
    default:
    case 11:
    case 12:
    case 13:
    }
    while ((getActivity() != null) && (this.c != null))
    {
      for (int m = 0; m < this.c.getCount(); m++)
      {
        Fragment localFragment = getFragmentManager().findFragmentByTag(a(this.b.getId(), m));
        if ((localFragment instanceof TrafficinfoFragment))
          ((TrafficinfoFragment)localFragment).a(this.h);
      }
      this.j.setText(2131493728);
      continue;
      this.j.setText(2131493729);
      continue;
      this.j.setText(2131493730);
    }
  }

  private void c()
  {
    TabPageIndicator localTabPageIndicator = new TabPageIndicator(new ContextThemeWrapper(getActivity(), 2131558573));
    ((FrameLayout)getView().findViewById(2131165568)).addView(localTabPageIndicator, new FrameLayout.LayoutParams(-1, -2));
    this.a = localTabPageIndicator;
  }

  private void d()
  {
    int m = 0;
    if ((getActivity() != null) && (this.c != null) && (!this.f))
    {
      FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
      int n = 0;
      while (m < this.c.getCount())
      {
        Fragment localFragment = getFragmentManager().findFragmentByTag(a(this.b.getId(), m));
        if (localFragment != null)
        {
          localFragmentTransaction.detach(localFragment);
          n = 1;
        }
        m++;
      }
      if (n != 0)
        localFragmentTransaction.commitAllowingStateLoss();
    }
  }

  private void e()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setItems(this.i, new m(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    localAlertDialog.show();
  }

  public String a()
  {
    return "/ms/networkMeter";
  }

  public int a_()
  {
    return 2131493723;
  }

  @TargetApi(11)
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.g = ((TrafficInfoPagerFragment.RetainFragment)getFragmentManager().findFragmentByTag("trafficinfo_pager_retained"));
    if (this.g == null)
    {
      this.g = new TrafficInfoPagerFragment.RetainFragment();
      this.g.a = this.e.getInt("selected_tab", 0);
      getFragmentManager().beginTransaction().add(this.g, "trafficinfo_pager_retained").commit();
    }
    b.a(new k(this), new Void[0]);
    boolean bool;
    if ((this.d.aK()) && (NetworkStatsService.c()))
    {
      bool = true;
      this.k = bool;
      this.j.setEnabled(this.k);
      if (Build.VERSION.SDK_INT >= 8)
        break label155;
      com.avast.android.generic.a.a(getActivity(), getString(2131493724));
    }
    while (true)
    {
      return;
      bool = false;
      break;
      label155: if (!NetworkStatsService.c())
        com.avast.android.generic.a.a(getActivity(), getString(2131493725));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
      this.h = paramBundle.getInt("period");
    this.d = ((t)ad.a(getActivity(), t.class));
    this.e = getActivity().getPreferences(0);
    String[] arrayOfString = new String[3];
    arrayOfString[0] = getString(2131493741);
    arrayOfString[1] = getString(2131493742);
    arrayOfString[2] = getString(2131493743);
    this.i = arrayOfString;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903148, paramViewGroup, false);
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    if ((getActivity() instanceof BaseMultiPaneActivity))
      d();
  }

  public void onResume()
  {
    super.onResume();
    boolean bool;
    if ((this.d.aK()) && (NetworkStatsService.c()))
    {
      bool = true;
      this.k = bool;
      if (isAdded())
        break label40;
    }
    while (true)
    {
      return;
      bool = false;
      break;
      label40: if (this.k)
      {
        Intent localIntent = new Intent("com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL");
        NetworkStatsService.a(getActivity(), localIntent);
      }
      this.j.setEnabled(this.k);
    }
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("period", this.h);
    this.f = true;
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((ViewPager)paramView.findViewById(2131165569));
    com.avast.android.mobilesecurity.ui.m.a(getActivity(), this.b);
    this.j = ((Button)paramView.findViewById(2131165567));
    this.j.setOnClickListener(new j(this));
    a(this.h);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.TrafficInfoPagerFragment
 * JD-Core Version:    0.6.2
 */