package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.Preference;

final class ck
  implements DialogInterface.OnClickListener
{
  ck(ci paramci, Preference paramPreference)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((CheckBoxPreference)this.a).a(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ck
 * JD-Core Version:    0.6.2
 */