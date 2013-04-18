package com.ijinshan.software.recommand;

import android.app.TabActivity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import com.jxphone.mosecurity.a.a;

public class SoftwareRecommandTabActivity extends TabActivity
{
  private RadioGroup a;
  private TabHost b;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903290);
    this.a = ((RadioGroup)findViewById(2131231611));
    this.b = getTabHost();
    if (paramBundle == null)
      a.i(this, "softwarerecommand");
    this.b.addTab(this.b.newTabSpec("tab1").setIndicator(getString(2131429128)).setContent(new Intent(this, NecessaryInstalledActivity.class)));
    this.b.addTab(this.b.newTabSpec("tab2").setIndicator(getString(2131429129)).setContent(new Intent(this, HotTopActivity.class)));
    this.a.setOnCheckedChangeListener(new o(this));
    this.b.setCurrentTabByTag("tab1");
    ((RadioButton)findViewById(2131231041)).setChecked(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.SoftwareRecommandTabActivity
 * JD-Core Version:    0.6.2
 */