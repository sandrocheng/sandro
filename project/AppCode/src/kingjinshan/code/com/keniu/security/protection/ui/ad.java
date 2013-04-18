package com.keniu.security.protection.ui;

import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class ad
  implements m
{
  private String b;
  private String c;

  public ad(PreventTheftSettingActivity paramPreventTheftSettingActivity, String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = paramString2;
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)paramPreference;
    if (localCheckBoxPreference.b())
    {
      aq localaq = new aq(this.a, (byte)0);
      localaq.a(this.b);
      localaq.b(this.c);
      localaq.b(this.a.getString(2131427866), new ae(this));
      localaq.a(this.a.getString(2131427864), new af(this, localCheckBoxPreference));
      localaq.c().show();
    }
    for (boolean bool = false; ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.ad
 * JD-Core Version:    0.6.2
 */