package com.keniu.security.traffic;

import android.os.Bundle;
import android.widget.TextView;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.util.BasePreferenceActivity;

public class AdjustAutoCalcActivity extends BasePreferenceActivity
  implements n
{
  private CheckBoxPreference a;
  private CheckBoxPreference b;

  public final boolean a(Preference paramPreference)
  {
    if (paramPreference.A().equals(getString(2131428034)))
    {
      this.a.a(true);
      this.b.a(false);
      y localy2 = y.a(this);
      localy2.v = 0;
      localy2.a(this, 2131428033);
    }
    while (true)
    {
      return false;
      if (paramPreference.A().equals(getString(2131428035)))
      {
        this.a.a(false);
        this.b.a(true);
        y localy1 = y.a(this);
        localy1.v = 1;
        localy1.a(this, 2131428033);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2131034129);
    setContentView(2130903297);
    ((TextView)findViewById(2131230727)).setText(getString(2131428475));
    ((TextView)findViewById(2131230728)).setVisibility(8);
    this.a = ((CheckBoxPreference)a(getString(2131428034)));
    this.a.a(this);
    this.b = ((CheckBoxPreference)a(getString(2131428035)));
    this.b.a(this);
    if (y.a(getApplicationContext()).v == 0)
    {
      this.a.a(true);
      this.b.a(false);
    }
    while (true)
    {
      return;
      this.a.a(false);
      this.b.a(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.AdjustAutoCalcActivity
 * JD-Core Version:    0.6.2
 */