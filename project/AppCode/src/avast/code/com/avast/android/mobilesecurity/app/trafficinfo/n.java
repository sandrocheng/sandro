package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.avast.android.generic.util.u;
import java.util.ArrayList;
import java.util.List;

class n extends FragmentPagerAdapter
{
  private List a;
  private Context b;
  private String[] c;

  public n(Context paramContext, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
    this.b = paramContext;
    this.a = new ArrayList(4);
    boolean bool = u.a(this.b, true);
    Bundle localBundle1 = new Bundle();
    if (bool)
    {
      localBundle1.putInt("argument_order", 2);
      this.a.add(TrafficinfoFragment.instantiate(paramContext, TrafficinfoFragment.class.getName(), localBundle1));
    }
    Bundle localBundle2 = new Bundle();
    localBundle2.putInt("argument_order", 3);
    this.a.add(TrafficinfoFragment.instantiate(paramContext, TrafficinfoFragment.class.getName(), localBundle2));
    if (bool)
    {
      Bundle localBundle3 = new Bundle();
      localBundle3.putInt("argument_order", 4);
      this.a.add(TrafficinfoFragment.instantiate(paramContext, TrafficinfoFragment.class.getName(), localBundle3));
      Bundle localBundle4 = new Bundle();
      localBundle4.putInt("argument_order", 1);
      this.a.add(TrafficinfoFragment.instantiate(paramContext, TrafficinfoFragment.class.getName(), localBundle4));
    }
    String[] arrayOfString2;
    if (bool)
    {
      arrayOfString2 = new String[4];
      arrayOfString2[0] = this.b.getString(2131493738);
      arrayOfString2[1] = this.b.getString(2131493739);
      arrayOfString2[2] = this.b.getString(2131493740);
      arrayOfString2[3] = this.b.getString(2131493737);
    }
    String[] arrayOfString1;
    for (this.c = arrayOfString2; ; this.c = arrayOfString1)
    {
      return;
      arrayOfString1 = new String[1];
      arrayOfString1[0] = this.b.getString(2131493739);
    }
  }

  public int getCount()
  {
    return this.a.size();
  }

  public Fragment getItem(int paramInt)
  {
    return (Fragment)this.a.get(paramInt);
  }

  public CharSequence getPageTitle(int paramInt)
  {
    return this.c[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.n
 * JD-Core Version:    0.6.2
 */