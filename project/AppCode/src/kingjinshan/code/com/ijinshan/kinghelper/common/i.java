package com.ijinshan.kinghelper.common;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.ijinshan.kpref.t;

final class i
  implements CompoundButton.OnCheckedChangeListener
{
  i(PickListActivity paramPickListActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(this.a).edit();
    String str = this.a.getString(2131427792);
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      localEditor.putBoolean(str, bool);
      localEditor.commit();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.i
 * JD-Core Version:    0.6.2
 */