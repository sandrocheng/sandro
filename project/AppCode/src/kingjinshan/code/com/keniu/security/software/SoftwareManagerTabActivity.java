package com.keniu.security.software;

import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;

public class SoftwareManagerTabActivity extends TabActivity
{
  public static int a = 0;
  private RadioGroup b;
  private TabHost c;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903104);
    this.b = ((RadioGroup)findViewById(2131231031));
    this.c = getTabHost();
    this.c.addTab(this.c.newTabSpec("tab1").setIndicator(getString(2131429126)).setContent(new Intent(this, SoftwareManager2.class)));
    this.c.addTab(this.c.newTabSpec("tab2").setIndicator(getString(2131429127)).setContent(new Intent(this, APKManagerActivity.class)));
    this.b.setOnCheckedChangeListener(new aw(this));
    this.c.setCurrentTabByTag("tab1");
    ((RadioButton)findViewById(2131231032)).setChecked(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.SoftwareManagerTabActivity
 * JD-Core Version:    0.6.2
 */