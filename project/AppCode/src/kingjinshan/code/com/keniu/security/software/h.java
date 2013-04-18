package com.keniu.security.software;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.ijinshan.kpref.t;

final class h
  implements View.OnClickListener
{
  h(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBox localCheckBox = (CheckBox)paramView;
    SharedPreferences.Editor localEditor = t.b(this.a).edit();
    localEditor.putBoolean(this.a.getString(2131428708), localCheckBox.isChecked());
    localEditor.commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.h
 * JD-Core Version:    0.6.2
 */