package com.avast.android.mobilesecurity.app.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.mobilesecurity.t;

class o
  implements DialogInterface.OnClickListener
{
  o(m paramm)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SettingsFragment.f(this.a.a).b(SettingsFragment.a(this.a.a).o());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.o
 * JD-Core Version:    0.6.2
 */