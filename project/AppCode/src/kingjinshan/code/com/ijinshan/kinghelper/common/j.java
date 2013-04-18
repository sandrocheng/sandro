package com.ijinshan.kinghelper.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;
import java.util.ArrayList;

final class j
  implements DialogInterface.OnClickListener
{
  j(PickListActivity paramPickListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PickListActivity.b(this.a);
    ArrayList localArrayList = PickListActivity.c(this.a);
    PickListActivity.a(this.a, localArrayList, 2, PickListActivity.d(this.a), PickListActivity.e(this.a));
    PickListActivity.a(this.a).a();
    SharedPreferences.Editor localEditor = t.b(this.a).edit();
    localEditor.putBoolean(PickListActivity.b(), true);
    localEditor.commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.j
 * JD-Core Version:    0.6.2
 */