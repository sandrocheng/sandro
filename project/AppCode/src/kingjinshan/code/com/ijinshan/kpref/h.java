package com.ijinshan.kpref;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class h
  implements DialogInterface.OnClickListener
{
  h(ListPreference paramListPreference)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ListPreference.a(this.a, paramInt);
    this.a.onClick(paramDialogInterface, -1);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.h
 * JD-Core Version:    0.6.2
 */