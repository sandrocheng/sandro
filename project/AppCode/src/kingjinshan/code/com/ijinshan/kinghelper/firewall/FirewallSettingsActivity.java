package com.ijinshan.kinghelper.firewall;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.Toast;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.PreferenceScreen;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.traffic.y;
import com.keniu.security.util.BasePreferenceActivity;
import com.keniu.security.util.aq;

public class FirewallSettingsActivity extends BasePreferenceActivity
{
  public static final String a = "67";
  public static final String b = "90";

  private void a(CheckBoxPreference paramCheckBoxPreference)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131428763));
    localaq.b(getString(2131427859));
    localaq.a(getString(2131427860), null);
    localaq.b(getString(2131427861), new ao(this, paramCheckBoxPreference));
    localaq.d();
  }

  private void c()
  {
    PreferenceScreen localPreferenceScreen = (PreferenceScreen)a(getString(2131427761));
    if (dd.e())
    {
      int i = dd.n();
      int j = dd.o();
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(i / 60);
      arrayOfObject[1] = Integer.valueOf(i % 60);
      arrayOfObject[2] = Integer.valueOf(j / 60);
      arrayOfObject[3] = Integer.valueOf(j % 60);
      String str = String.format("%02d:%02d - %02d:%02d", arrayOfObject);
      localPreferenceScreen.a("每天 " + str + " 开启" + dd.f().a());
    }
    while (true)
    {
      return;
      localPreferenceScreen.f(2131427371);
    }
  }

  private void d()
  {
    PreferenceScreen localPreferenceScreen1 = (PreferenceScreen)a(getString(2131427750));
    String str1 = getString(2131427412);
    localPreferenceScreen1.a(str1 + dd.g().a() + getString(2131427416));
    localPreferenceScreen1.a(new aj(this));
    PreferenceScreen localPreferenceScreen2 = (PreferenceScreen)a(getString(2131427761));
    if (dd.e())
    {
      int i = dd.n();
      int j = dd.o();
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = Integer.valueOf(i / 60);
      arrayOfObject2[1] = Integer.valueOf(i % 60);
      arrayOfObject2[2] = Integer.valueOf(j / 60);
      arrayOfObject2[3] = Integer.valueOf(j % 60);
      String str2 = String.format("%02d:%02d - %02d:%02d", arrayOfObject2);
      localPreferenceScreen2.a("每天 " + str2 + " 开启" + dd.f().a());
    }
    while (true)
    {
      ((PreferenceScreen)a(getString(2131427749))).a(new ak(this));
      ((PreferenceScreen)a(getString(2131427761))).a(new al(this));
      CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)a(getString(2131427358));
      if (!y.a(getApplicationContext()).b)
      {
        localCheckBoxPreference1.c(false);
        localCheckBoxPreference1.a(2131427359);
        localCheckBoxPreference1.b(2131427359);
      }
      CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)a(getString(2131427745));
      localCheckBoxPreference2.a(new am(this, localCheckBoxPreference2));
      localCheckBoxPreference2.a(dd.d());
      ListPreference localListPreference = (ListPreference)a(getString(2131427364));
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localListPreference.m()[Integer.parseInt(dd.r())];
      localListPreference.a(getString(2131427367, arrayOfObject1));
      localListPreference.a(new an(this));
      return;
      localPreferenceScreen2.f(2131427371);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    dd.a(this);
    dd.a();
    super.a(paramBundle, 2131034119);
    d();
    if (paramBundle == null)
      a.i(this, "sao_set");
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492866, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131231767:
    }
    while (true)
    {
      return true;
      dd.b();
      d();
      Toast.makeText(this, 2131429541, 0).show();
    }
  }

  protected void onResume()
  {
    super.onResume();
    d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallSettingsActivity
 * JD-Core Version:    0.6.2
 */