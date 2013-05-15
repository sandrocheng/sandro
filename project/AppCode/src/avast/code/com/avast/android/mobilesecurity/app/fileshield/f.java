package com.avast.android.mobilesecurity.app.fileshield;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class f extends BroadcastReceiver
{
  f(FileShieldService paramFileShieldService)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    FileShieldService.a(this.a).a(paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.f
 * JD-Core Version:    0.6.2
 */