package com.keniu.security.traffic;

import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.af;

public class TrafficTabActivity extends TabActivity
{
  public static boolean a = false;
  public static final String b = "tab_traffic_main";
  public static final String c = "tab_soft_traffic";
  public static final String d = "tab_traffic_settings";
  public static final String e = "extra_from_auto_check_failed_notify";
  public static final String f = "extra_to_main";
  public static final String g = "extra_to_soft";
  public static final String h = "extra_to_iptables";
  public static final String i = "extra_num";
  private TabHost j;
  private Intent k;
  private RadioGroup l;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903236);
    this.l = ((RadioGroup)findViewById(2131231031));
    this.j = getTabHost();
    if (paramBundle == null)
      a.i(this, "traffic");
    if (getIntent().getBooleanExtra("extra_from_auto_check_failed_notify", false))
      a.c(this, "6");
    this.k = new Intent().setClass(this, TrafficMainActivity.class);
    if (getIntent().getBooleanExtra("autoadjustnotify", false))
      this.k.putExtra("autoadjustnotify", true);
    if (getIntent().getBooleanExtra("updateZFT", false))
      this.k.putExtra("updateZFT", true);
    if (getIntent().getBooleanExtra("fromTrafficUsedSettingActivity", false))
      this.k.putExtra("fromTrafficUsedSettingActivity", true);
    TabHost.TabSpec localTabSpec1 = this.j.newTabSpec("tab_traffic_main").setIndicator(getString(2131428222)).setContent(this.k);
    this.j.addTab(localTabSpec1);
    this.k = new Intent().setClass(this, TrafficSoftListActivity2.class);
    TabHost.TabSpec localTabSpec2 = this.j.newTabSpec("tab_soft_traffic").setIndicator(getString(2131428224)).setContent(this.k);
    this.j.addTab(localTabSpec2);
    this.k = new Intent().setClass(this, TrafficFireWallMainActivity.class);
    TabHost.TabSpec localTabSpec3 = this.j.newTabSpec("tab_traffic_settings").setIndicator(getString(2131428225)).setContent(this.k);
    this.j.addTab(localTabSpec3);
    this.l.setOnCheckedChangeListener(new da(this));
    if (getIntent().getBooleanExtra("extra_to_main", false))
    {
      getIntent().putExtra("extra_to_main", false);
      this.j.setCurrentTabByTag("tab_traffic_main");
      ((RadioButton)findViewById(2131231032)).setChecked(true);
    }
    while (true)
    {
      return;
      if (getIntent().getBooleanExtra("extra_to_iptables", false))
      {
        getIntent().putExtra("extra_to_iptables", false);
        this.j.setCurrentTabByTag("tab_traffic_settings");
        ((RadioButton)findViewById(2131231041)).setChecked(true);
      }
      else
      {
        if (!getIntent().getBooleanExtra("extra_to_soft", false))
          break;
        getIntent().putExtra("extra_to_soft", false);
        this.j.setCurrentTabByTag("tab_soft_traffic");
        ((RadioButton)findViewById(2131231033)).setChecked(true);
      }
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492873, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131231783:
    }
    while (true)
    {
      return true;
      af.a(this, TrafficSettingActivity.class);
    }
  }

  protected void onResume()
  {
    super.onResume();
    if (a)
    {
      a = false;
      this.j.setCurrentTabByTag("tab_traffic_main");
      ((RadioButton)findViewById(2131231032)).setChecked(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficTabActivity
 * JD-Core Version:    0.6.2
 */