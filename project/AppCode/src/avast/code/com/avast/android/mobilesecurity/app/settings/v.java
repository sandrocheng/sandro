package com.avast.android.mobilesecurity.app.settings;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.mobilesecurity.t;

class v
  implements View.OnClickListener
{
  v(SettingsFragment paramSettingsFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (TextUtils.isEmpty(SettingsFragment.a(this.a).k()))
      SettingsFragment.a(this.a, true, false);
    while (true)
    {
      return;
      if (SettingsFragment.a(this.a).e())
        PasswordDialog.a(this.a.getFragmentManager(), 2131165218);
      else
        SettingsFragment.a(this.a, false, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.v
 * JD-Core Version:    0.6.2
 */