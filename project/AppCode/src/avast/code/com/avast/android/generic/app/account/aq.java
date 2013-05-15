package com.avast.android.generic.app.account;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.ae;
import com.avast.android.generic.ui.PasswordDialog;

class aq extends BroadcastReceiver
{
  aq(DisconnectFragment paramDisconnectFragment)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (DisconnectFragment.a(this.a).e())
      PasswordDialog.a(this.a.getFragmentManager(), this.a.c());
    while (true)
    {
      return;
      DisconnectFragment.b(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.aq
 * JD-Core Version:    0.6.2
 */