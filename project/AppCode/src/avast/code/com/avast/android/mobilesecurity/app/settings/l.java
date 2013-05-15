package com.avast.android.mobilesecurity.app.settings;

import android.view.View;
import android.view.View.OnClickListener;

class l
  implements View.OnClickListener
{
  l(SettingsFragment paramSettingsFragment)
  {
  }

  public void onClick(View paramView)
  {
    SettingsAccountActivity.call(this.a.getActivity());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.l
 * JD-Core Version:    0.6.2
 */