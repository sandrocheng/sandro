package com.ijinshan.kinghelper.firewall;

import android.app.LocalActivityManager;
import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.main.MainActivity;

public class FirewallLogTabActivity extends TabActivity
  implements TabHost.OnTabChangeListener
{
  public static final String a = "FirewallLogTabActivity_current_tab";
  public static final String b = "FirewallLogTabActivity_current_tab_call";
  public static final String c = "FirewallLogTabActivity_current_tab_sms";
  public static final String d = "FirewallLogTabActivity_current_tab_blacklist";
  public static final String e = "FirewallLogTabActivity_current_tab_whitelist";
  public static final String f = "FirewallLogTabActivity_current_tab_setting";
  public static final String g = "FirewallLogTabActivity_force_rubbish_scan";
  public static final String h = "FirewallLogTabActivity_rubbish_scan_res";
  public static final String i = "FirewallLogTabActivity_LOG_FromNotify";
  private RadioGroup j;

  protected void onCreate(Bundle paramBundle)
  {
    if (paramBundle == null)
      a.i(this, "saolan");
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903107);
    this.j = ((RadioGroup)findViewById(2131231031));
    TabHost localTabHost = getTabHost();
    Intent localIntent1 = new Intent().setClass(this, FirewallSmsLogListActivity.class);
    if (getIntent().getBooleanExtra("FirewallLogTabActivity_force_rubbish_scan", false))
      localIntent1.putExtra("FirewallLogTabActivity_force_rubbish_scan", true);
    int k = getIntent().getIntExtra("FirewallLogTabActivity_rubbish_scan_res", 0);
    if (k > 0)
      localIntent1.putExtra("FirewallLogTabActivity_rubbish_scan_res", k);
    localTabHost.addTab(localTabHost.newTabSpec("FirewallLogTabActivity_current_tab_sms").setIndicator("FirewallLogTabActivity_current_tab_sms").setContent(localIntent1));
    Intent localIntent2 = new Intent().setClass(this, FirewallCallLogListActivity.class);
    localTabHost.addTab(localTabHost.newTabSpec("FirewallLogTabActivity_current_tab_call").setIndicator("FirewallLogTabActivity_current_tab_call").setContent(localIntent2));
    Intent localIntent3 = new Intent().setClass(this, UserWhiteBlackListActivity.class);
    localIntent3.putExtra("rule_type", 2);
    localTabHost.addTab(localTabHost.newTabSpec("FirewallLogTabActivity_current_tab_blacklist").setIndicator("FirewallLogTabActivity_current_tab_blacklist").setContent(localIntent3));
    Intent localIntent4 = new Intent().setClass(this, UserWhiteBlackListActivity.class);
    localIntent4.putExtra("rule_type", 1);
    localTabHost.addTab(localTabHost.newTabSpec("FirewallLogTabActivity_current_tab_whitelist").setIndicator("FirewallLogTabActivity_current_tab_whitelist").setContent(localIntent4));
    Intent localIntent5 = new Intent().setClass(this, FirewallSettingsActivity.class);
    localTabHost.addTab(localTabHost.newTabSpec("FirewallLogTabActivity_current_tab_setting").setIndicator("FirewallLogTabActivity_current_tab_setting").setContent(localIntent5));
    Intent localIntent6 = getIntent();
    String str;
    if (localIntent6 != null)
    {
      str = localIntent6.getStringExtra("FirewallLogTabActivity_current_tab");
      if (str != null)
        if (str.equals("FirewallLogTabActivity_current_tab_sms"))
        {
          localTabHost.setCurrentTabByTag("FirewallLogTabActivity_current_tab_sms");
          ((RadioButton)findViewById(2131231032)).setChecked(true);
          if (getIntent().getBooleanExtra("FirewallLogTabActivity_LOG_FromNotify", false))
            a.b(this, "1");
        }
    }
    while (true)
    {
      this.j.setOnCheckedChangeListener(new ae(this, localTabHost));
      localTabHost.setOnTabChangedListener(this);
      return;
      if (str.equals("FirewallLogTabActivity_current_tab_call"))
      {
        localTabHost.setCurrentTabByTag("FirewallLogTabActivity_current_tab_call");
        ((RadioButton)findViewById(2131231033)).setChecked(true);
        if (getIntent().getBooleanExtra("FirewallLogTabActivity_LOG_FromNotify", false))
          a.b(this, "3");
      }
      else if (str.equals("FirewallLogTabActivity_current_tab_blacklist"))
      {
        localTabHost.setCurrentTabByTag("FirewallLogTabActivity_current_tab_blacklist");
        ((RadioButton)findViewById(2131231041)).setChecked(true);
      }
      else if (str.equals("FirewallLogTabActivity_current_tab_whitelist"))
      {
        localTabHost.setCurrentTabByTag("FirewallLogTabActivity_current_tab_whitelist");
      }
      else
      {
        localTabHost.setCurrentTabByTag("FirewallLogTabActivity_current_tab_setting");
        ((RadioButton)findViewById(2131231042)).setChecked(true);
        continue;
        localTabHost.setCurrentTabByTag("FirewallLogTabActivity_current_tab_sms");
        ((RadioButton)findViewById(2131231032)).setChecked(true);
        continue;
        localTabHost.setCurrentTabByTag("FirewallLogTabActivity_current_tab_sms");
        ((RadioButton)findViewById(2131231032)).setChecked(true);
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      startActivity(new Intent(this, MainActivity.class));
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    TabHost localTabHost = getTabHost();
    ((RadioButton)findViewById(2131231032)).setChecked(false);
    ((RadioButton)findViewById(2131231033)).setChecked(false);
    ((RadioButton)findViewById(2131231041)).setChecked(false);
    ((RadioButton)findViewById(2131231042)).setChecked(false);
    String str = paramIntent.getStringExtra("FirewallLogTabActivity_current_tab");
    if (str != null)
    {
      if (!str.equals("FirewallLogTabActivity_current_tab_sms"))
        break label101;
      localTabHost.setCurrentTab(0);
      ((RadioButton)findViewById(2131231032)).setChecked(true);
    }
    while (true)
    {
      return;
      label101: if (str.equals("FirewallLogTabActivity_current_tab_call"))
      {
        localTabHost.setCurrentTab(1);
        ((RadioButton)findViewById(2131231033)).setChecked(true);
      }
      else if (str.equals("FirewallLogTabActivity_current_tab_blacklist"))
      {
        localTabHost.setCurrentTab(2);
        ((RadioButton)findViewById(2131231041)).setChecked(true);
      }
      else if (str.equals("FirewallLogTabActivity_current_tab_whitelist"))
      {
        localTabHost.setCurrentTab(3);
      }
      else
      {
        localTabHost.setCurrentTab(4);
        ((RadioButton)findViewById(2131231042)).setChecked(true);
      }
    }
  }

  public void onTabChanged(String paramString)
  {
    if ((!paramString.equals("FirewallLogTabActivity_current_tab_sms")) && ((FirewallSmsLogListActivity)super.getLocalActivityManager().getActivity("FirewallLogTabActivity_current_tab_sms") != null))
      FirewallSmsLogListActivity.b();
    if (!paramString.equals("FirewallLogTabActivity_current_tab_call"))
    {
      FirewallCallLogListActivity localFirewallCallLogListActivity = (FirewallCallLogListActivity)super.getLocalActivityManager().getActivity("FirewallLogTabActivity_current_tab_call");
      if (localFirewallCallLogListActivity != null)
        localFirewallCallLogListActivity.a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallLogTabActivity
 * JD-Core Version:    0.6.2
 */