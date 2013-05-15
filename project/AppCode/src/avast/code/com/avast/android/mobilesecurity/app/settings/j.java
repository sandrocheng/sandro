package com.avast.android.mobilesecurity.app.settings;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.app.about.AboutActivity;

class j
  implements View.OnClickListener
{
  j(SettingsFragment paramSettingsFragment)
  {
  }

  public void onClick(View paramView)
  {
    AboutActivity.call(this.a.getActivity(), SettingsFragment.i(this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.j
 * JD-Core Version:    0.6.2
 */