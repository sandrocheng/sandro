package com.avast.android.mobilesecurity.app.manager;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;
import java.util.List;

class q extends FragmentPagerAdapter
{
  private List a;
  private Context b;
  private String[] c;

  public q(Context paramContext, FragmentManager paramFragmentManager, int paramInt)
  {
    super(paramFragmentManager);
    this.b = paramContext;
    this.a = new ArrayList(2);
    Bundle localBundle1 = new Bundle();
    localBundle1.putInt("list_type", 0);
    localBundle1.putInt("order_by", paramInt);
    this.a.add(ManagerAppFragment.instantiate(paramContext, ManagerAppFragment.class.getName(), localBundle1));
    Bundle localBundle2 = new Bundle();
    localBundle2.putInt("list_type", 1);
    localBundle2.putInt("order_by", paramInt);
    this.a.add(ManagerAppFragment.instantiate(paramContext, ManagerAppFragment.class.getName(), localBundle2));
    String[] arrayOfString = new String[2];
    arrayOfString[0] = this.b.getString(2131493582);
    arrayOfString[1] = this.b.getString(2131493581);
    this.c = arrayOfString;
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
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.q
 * JD-Core Version:    0.6.2
 */