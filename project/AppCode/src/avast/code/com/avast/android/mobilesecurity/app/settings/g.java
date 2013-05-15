package com.avast.android.mobilesecurity.app.settings;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.PasswordDialog;

class g
  implements View.OnClickListener
{
  g(SettingsFragment paramSettingsFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-Settings", "uninstallAntiTheft", "", 0L);
    PasswordDialog.a(this.a.getActivity().getSupportFragmentManager(), 2131165214);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.g
 * JD-Core Version:    0.6.2
 */