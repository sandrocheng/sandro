package com.avast.android.mobilesecurity.app.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.mobilesecurity.t;

class d extends BroadcastReceiver
{
  d(SettingsFragment paramSettingsFragment)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("phone_number");
    SettingsFragment.a(this.a).f(str);
    if (this.a.isAdded())
      SettingsFragment.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.d
 * JD-Core Version:    0.6.2
 */