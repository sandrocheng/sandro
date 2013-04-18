package com.ijinshan.kinghelper.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;

final class k
  implements DialogInterface.OnClickListener
{
  k(PickListActivity paramPickListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PickListActivity.b(this.a);
    PickListActivity.a(this.a).a();
    SharedPreferences.Editor localEditor = t.b(this.a).edit();
    localEditor.putBoolean(PickListActivity.b(), false);
    localEditor.commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.k
 * JD-Core Version:    0.6.2
 */