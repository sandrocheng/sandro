package com.avast.android.mobilesecurity.app.home;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.avast.android.antitheft_setup_components.app.home.InstallationModeActivity;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.z;
import com.avast.android.mobilesecurity.app.advisor.AdvisorPagerActivity;
import com.avast.android.mobilesecurity.app.filter.FilterGroupsActivity;
import com.avast.android.mobilesecurity.app.firewall.FirewallActivity;
import com.avast.android.mobilesecurity.app.manager.ManagerPagerActivity;
import com.avast.android.mobilesecurity.app.scanner.ScannerActivity;
import com.avast.android.mobilesecurity.app.settings.SettingsActivity;
import com.avast.android.mobilesecurity.app.shieldcontrol.ShieldControlActivity;
import com.avast.android.mobilesecurity.app.trafficinfo.TrafficInfoPagerActivity;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public class DashboardFragment extends TrackedListFragment
  implements FragmentManager.OnBackStackChangedListener
{
  private int a = -1;
  private View b;

  public void a()
  {
    if (this.a >= 0)
    {
      getListView().setItemChecked(this.a, false);
      this.a = -1;
    }
  }

  public void a(int paramInt)
  {
    getListView().setItemChecked(paramInt, true);
    this.a = paramInt;
  }

  public void a(Class paramClass)
  {
    a locala = (a)getListAdapter();
    for (int i = 0; ; i++)
    {
      if (i < locala.getCount())
      {
        Iterator localIterator = ((b)locala.getItem(i)).a().iterator();
        do
          if (!localIterator.hasNext())
            break;
        while (!paramClass.equals((Class)localIterator.next()));
        a(i);
      }
      return;
    }
  }

  public int c()
  {
    return this.a;
  }

  public String f()
  {
    return "/ms";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (al.b(getActivity()))
      getListView().setChoiceMode(1);
    getListView().setOnItemSelectedListener(new c(this));
  }

  public void onBackStackChanged()
  {
    FragmentManager localFragmentManager = getFragmentManager();
    if ((localFragmentManager != null) && (localFragmentManager.getBackStackEntryCount() == 0))
      a();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getFragmentManager().addOnBackStackChangedListener(this);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903111, paramViewGroup, false);
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    FragmentManager localFragmentManager = getActivity().getSupportFragmentManager();
    if ((this.a == paramInt) && (localFragmentManager.getBackStackEntryCount() == 1));
    while (true)
    {
      return;
      if (al.b(getActivity()))
      {
        localFragmentManager.popBackStackImmediate(null, 1);
        a(paramInt);
      }
      switch ((int)paramLong)
      {
      default:
        break;
      case 2131493354:
        ScannerActivity.call(getActivity());
        break;
      case 2131493355:
        AdvisorPagerActivity.call(getActivity());
        break;
      case 2131493357:
        ManagerPagerActivity.call(getActivity());
        break;
      case 2131493361:
        ShieldControlActivity.call((BaseActivity)getActivity());
        break;
      case 2131493359:
        FilterGroupsActivity.call(getActivity());
        break;
      case 2131493360:
        FirewallActivity.call(getActivity());
        break;
      case 2131493362:
        TrafficInfoPagerActivity.call(getActivity());
        break;
      case 2131493464:
        String str = z.b(getActivity());
        if (str != null)
        {
          Intent localIntent = new Intent();
          localIntent.setComponent(new ComponentName(str, "com.avast.android.antitheft.app.AlwaysAvailableStartupActivity"));
          localIntent.setAction("com.avast.android.antitheft.LAUNCH");
          localIntent.putExtra("ignorePwd", ((ae)ad.a(getActivity(), ae.class)).o());
          localIntent.addFlags(268468224);
          try
          {
            startActivity(localIntent);
          }
          catch (Exception localException)
          {
            m.e("Can not launch anti-theft: " + localException.getMessage());
          }
        }
        else if (new File("/system/app/com.avast.android.antitheft.apk").exists())
        {
          com.avast.android.generic.a.a(getActivity(), getString(2131494125));
        }
        else
        {
          InstallationModeActivity.call(getActivity());
        }
        break;
      case 2131493364:
        SettingsActivity.call(getActivity());
      }
    }
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = LayoutInflater.from(getActivity()).inflate(2130903207, null, false);
    getListView().addFooterView(this.b);
    setListAdapter(new a(getActivity()));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.DashboardFragment
 * JD-Core Version:    0.6.2
 */