package com.ijinshan.kinghelper.firewall;

import android.os.Bundle;
import android.text.TextUtils;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.PreferenceScreen;
import com.ijinshan.kpref.m;
import com.keniu.security.util.BasePreferenceActivity;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.Iterator;

public class FireWallSettingS2Activity extends BasePreferenceActivity
  implements m
{
  private final ArrayList a = new ArrayList();

  private void a(CheckBoxPreference paramCheckBoxPreference)
  {
    paramCheckBoxPreference.a(true);
    dd.b(paramCheckBoxPreference.A());
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)localIterator.next();
      if (TextUtils.equals(paramCheckBoxPreference.A(), localCheckBoxPreference.A()))
        localCheckBoxPreference.a(true);
      else
        localCheckBoxPreference.a(false);
    }
  }

  private void a(String paramString, CheckBoxPreference paramCheckBoxPreference)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131428763));
    localaq.b(paramString);
    localaq.a(getString(2131427653), new e(this, paramCheckBoxPreference));
    localaq.b(getString(2131427654), null);
    localaq.d();
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    df localdf = df.a(paramPreference.A());
    String str = getString(2131427437);
    if (localdf == df.e)
      str = getString(2131427438);
    if (localdf == df.c)
      str = getString(2131427439);
    if (localdf == df.d)
      str = getString(2131427440);
    if ((localdf != df.a) && (localdf != df.f))
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)paramPreference;
      aq localaq = new aq(this, (byte)0);
      localaq.a(getString(2131428763));
      localaq.b(str);
      localaq.a(getString(2131427653), new e(this, localCheckBoxPreference));
      localaq.b(getString(2131427654), null);
      localaq.d();
    }
    while (true)
    {
      return false;
      a((CheckBoxPreference)paramPreference);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2131034117);
    for (df localdf : df.values())
      if (localdf != df.g)
      {
        CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)a(localdf.b());
        this.a.add(localCheckBoxPreference2);
      }
    String str = dd.g().b();
    Iterator localIterator1 = this.a.iterator();
    while (localIterator1.hasNext())
    {
      CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)localIterator1.next();
      localCheckBoxPreference1.a(localCheckBoxPreference1.A().equals(str));
    }
    Iterator localIterator2 = this.a.iterator();
    while (localIterator2.hasNext())
      ((CheckBoxPreference)localIterator2.next()).a(this);
    ((PreferenceScreen)a(getString(2131427757))).a(new d(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FireWallSettingS2Activity
 * JD-Core Version:    0.6.2
 */