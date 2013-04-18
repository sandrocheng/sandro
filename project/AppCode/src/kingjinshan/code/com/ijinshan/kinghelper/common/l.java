package com.ijinshan.kinghelper.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.CheckBox;
import com.ijinshan.kpref.t;

final class l
  implements DialogInterface.OnDismissListener
{
  l(PickListActivity paramPickListActivity, CheckBox paramCheckBox)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    SharedPreferences.Editor localEditor = t.b(this.b).edit();
    String str = this.b.getString(2131427789);
    if (!this.a.isChecked());
    for (boolean bool = true; ; bool = false)
    {
      localEditor.putBoolean(str, bool);
      localEditor.commit();
      this.b.finish();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.l
 * JD-Core Version:    0.6.2
 */