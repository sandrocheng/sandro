package com.avast.android.mobilesecurity.app.settings;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.mobilesecurity.t;

class s
  implements View.OnClickListener
{
  s(SettingsFragment paramSettingsFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (SettingsFragment.a(this.a).e())
      PasswordDialog.a(this.a.getFragmentManager(), 2131165213);
    while (true)
    {
      return;
      SettingsFragment.g(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.s
 * JD-Core Version:    0.6.2
 */