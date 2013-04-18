package com.keniu.security.protection.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ijinshan.kpref.t;

final class p
  implements DialogInterface.OnClickListener
{
  p(PreventTheftMainActivity paramPreventTheftMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PreventTheftMainActivity localPreventTheftMainActivity = this.a;
    SharedPreferences.Editor localEditor = t.b(localPreventTheftMainActivity).edit();
    localEditor.putBoolean(localPreventTheftMainActivity.getString(2131429242), true);
    localEditor.commit();
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, PreventTheftMainActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.p
 * JD-Core Version:    0.6.2
 */