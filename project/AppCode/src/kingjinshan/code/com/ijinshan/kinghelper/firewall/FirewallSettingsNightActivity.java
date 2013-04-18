package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.PreferenceScreen;
import com.ijinshan.kpref.m;
import com.keniu.security.util.BasePreferenceActivity;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public class FirewallSettingsNightActivity extends BasePreferenceActivity
  implements m
{
  private List a = null;

  public static boolean a(Context paramContext)
  {
    dd.a(paramContext);
    boolean bool;
    if (!dd.e())
      bool = false;
    while (true)
    {
      return bool;
      Calendar localCalendar = Calendar.getInstance();
      int i = 60 * localCalendar.get(11) + localCalendar.get(12);
      int j = dd.n();
      int k = dd.o();
      if (j <= k)
      {
        if ((i >= j) && (i < k))
          bool = true;
        else
          bool = false;
      }
      else if ((i >= j) || (i < k))
        bool = true;
      else
        bool = false;
    }
  }

  private void c()
  {
    this.a = new ArrayList();
    for (dg localdg : dg.values())
      if (localdg != dg.g)
      {
        CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)a(localdg.b());
        this.a.add(localCheckBoxPreference2);
      }
    ((PreferenceScreen)a(getString(2131427773))).a(new as(this));
    String str = dd.f().b();
    Iterator localIterator1 = this.a.iterator();
    while (localIterator1.hasNext())
    {
      CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)localIterator1.next();
      localCheckBoxPreference1.a(localCheckBoxPreference1.A().equals(str));
    }
    Iterator localIterator2 = this.a.iterator();
    while (localIterator2.hasNext())
      ((CheckBoxPreference)localIterator2.next()).a(this);
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)localIterator.next();
      if (TextUtils.equals(paramPreference.A(), localCheckBoxPreference.A()))
        localCheckBoxPreference.a(true);
      else
        localCheckBoxPreference.a(false);
    }
    dd.a(paramPreference.A());
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2131034116);
    dd.a(this);
    this.a = new ArrayList();
    for (dg localdg : dg.values())
      if (localdg != dg.g)
      {
        CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)a(localdg.b());
        this.a.add(localCheckBoxPreference2);
      }
    ((PreferenceScreen)a(getString(2131427773))).a(new as(this));
    String str = dd.f().b();
    Iterator localIterator1 = this.a.iterator();
    while (localIterator1.hasNext())
    {
      CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)localIterator1.next();
      localCheckBoxPreference1.a(localCheckBoxPreference1.A().equals(str));
    }
    Iterator localIterator2 = this.a.iterator();
    while (localIterator2.hasNext())
      ((CheckBoxPreference)localIterator2.next()).a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallSettingsNightActivity
 * JD-Core Version:    0.6.2
 */