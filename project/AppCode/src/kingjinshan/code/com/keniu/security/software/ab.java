package com.keniu.security.software;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.ijinshan.kpref.t;

final class ab
  implements View.OnClickListener
{
  ab(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBox localCheckBox = (CheckBox)paramView;
    SharedPreferences.Editor localEditor = t.b(this.a).edit();
    localEditor.putBoolean("hidesoftwareremoverootdialog", localCheckBox.isChecked());
    localEditor.commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.ab
 * JD-Core Version:    0.6.2
 */