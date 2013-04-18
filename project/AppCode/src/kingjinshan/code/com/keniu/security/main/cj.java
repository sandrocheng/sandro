package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;
import com.keniu.security.traffic.dd;
import com.keniu.security.traffic.y;

final class cj
  implements DialogInterface.OnClickListener
{
  cj(ci paramci, Preference paramPreference)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((CheckBoxPreference)this.a).a(false);
    SettingActivity.a(this.b.a).b = false;
    SettingActivity.a(this.b.a).a(this.b.a, 2131428289);
    dd.a(this.b.a, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cj
 * JD-Core Version:    0.6.2
 */