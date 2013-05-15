package com.avast.android.mobilesecurity.app.advisor;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.avast.android.generic.ui.af;
import java.util.ArrayList;
import java.util.List;

class f extends FragmentPagerAdapter
{
  private List a;
  private Context b;

  public f(Context paramContext, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
    this.b = paramContext;
    this.a = new ArrayList(2);
    this.a.add(AdvisorGroupsFragment.instantiate(paramContext, AdvisorGroupsFragment.class.getName(), new Bundle()));
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
    return this.b.getString(((af)this.a.get(paramInt)).a_());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.f
 * JD-Core Version:    0.6.2
 */