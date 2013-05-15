package com.avast.android.mobilesecurity.app.manager;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
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
import com.viewpagerindicator.a;
import java.util.ArrayList;
import java.util.List;

public class ManagerPagerFragment extends TrackedFragment
  implements af
{
  private a a;
  private ViewPager b;
  private x c;
  private t d;
  private SharedPreferences e;
  private boolean f;
  private ManagerPagerFragment.RetainFragment g;
  private String[] h;
  private String[] i;
  private int[] j;
  private int k;
  private Button l;

  private static String b(int paramInt1, int paramInt2)
  {
    return "android:switcher:" + paramInt1 + ":" + paramInt2;
  }

  private void c()
  {
    TabPageIndicator localTabPageIndicator = new TabPageIndicator(new ContextThemeWrapper(getActivity(), 2131558573));
    ((FrameLayout)getView().findViewById(2131165501)).addView(localTabPageIndicator, new FrameLayout.LayoutParams(-1, -2));
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
        Fragment localFragment = getFragmentManager().findFragmentByTag(b(this.b.getId(), m));
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
    ManagerAppFragment localManagerAppFragment = f();
    int m;
    if (localManagerAppFragment != null)
    {
      m = localManagerAppFragment.a();
      if (m != 0)
        break label76;
    }
    label76: for (String[] arrayOfString = this.h; ; arrayOfString = this.i)
    {
      localBuilder.setItems(arrayOfString, new p(this, m, localManagerAppFragment, arrayOfString));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setInverseBackgroundForced(true);
      localAlertDialog.show();
      return;
    }
  }

  private ManagerAppFragment f()
  {
    return (ManagerAppFragment)getFragmentManager().findFragmentByTag(b(this.b.getId(), this.b.c()));
  }

  private List g()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.c != null)
      for (int m = 0; m < this.c.getCount(); m++)
      {
        Fragment localFragment = getFragmentManager().findFragmentByTag(b(this.b.getId(), m));
        if (localFragment != null)
          localArrayList.add((ManagerAppFragment)localFragment);
      }
    return localArrayList;
  }

  public String a()
  {
    return "/ms/appManager";
  }

  public int a_()
  {
    return 2131493357;
  }

  @TargetApi(11)
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.g = ((ManagerPagerFragment.RetainFragment)getFragmentManager().findFragmentByTag("manager_pager_retained"));
    if (this.g == null)
    {
      this.g = new ManagerPagerFragment.RetainFragment();
      this.g.a = this.e.getInt("selected_tab", 0);
      getFragmentManager().beginTransaction().add(this.g, "manager_pager_retained").commit();
    }
    if ((al.a(getActivity())) && (al.c(getActivity())))
      this.l.setVisibility(8);
    b.a(new n(this), new Void[0]);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String[] arrayOfString1 = new String[4];
    arrayOfString1[0] = getString(2131493575);
    arrayOfString1[1] = getString(2131493579);
    arrayOfString1[2] = getString(2131493578);
    arrayOfString1[3] = getString(2131493577);
    this.h = arrayOfString1;
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = getString(2131493575);
    arrayOfString2[1] = getString(2131493579);
    this.i = arrayOfString2;
    this.j = new int[] { 0, 1, 2, 3 };
    this.d = ((t)ad.a(getActivity(), t.class));
    this.e = getActivity().getPreferences(0);
    this.k = -1;
    if (paramBundle != null)
      this.k = paramBundle.getInt("order_by", -1);
    if (this.k < 0)
    {
      this.k = this.d.b("am_order", 0);
      Bundle localBundle = getActivity().getIntent().getExtras();
      if ((localBundle != null) && (localBundle.containsKey("mOrder")))
        this.k = localBundle.getInt("mOrder");
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.f = false;
    return paramLayoutInflater.inflate(2130903132, paramViewGroup, false);
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
    ManagerAppFragment localManagerAppFragment = f();
    if (localManagerAppFragment != null)
      paramBundle.putInt("order_by", localManagerAppFragment.c());
    this.f = true;
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((ViewPager)paramView.findViewById(2131165502));
    com.avast.android.mobilesecurity.ui.m.a(getActivity(), this.b);
    this.l = ((Button)paramView.findViewById(2131165500));
    this.l.setText(this.h[this.k]);
    this.l.setOnClickListener(new m(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.ManagerPagerFragment
 * JD-Core Version:    0.6.2
 */