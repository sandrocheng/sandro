package com.avast.android.mobilesecurity.app.settings;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.app.account.ConnectionCheckActivity;

class a
  implements View.OnClickListener
{
  a(SettingsAccountFragment paramSettingsAccountFragment)
  {
  }

  public void onClick(View paramView)
  {
    SettingsAccountFragment.a(this.a).putInt("versionResId", 2131099658);
    ConnectionCheckActivity.call(this.a.getActivity(), SettingsAccountFragment.a(this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.a
 * JD-Core Version:    0.6.2
 */