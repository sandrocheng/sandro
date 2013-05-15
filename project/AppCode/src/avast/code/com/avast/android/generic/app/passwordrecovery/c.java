package com.avast.android.generic.app.passwordrecovery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.a.p;

class c extends BroadcastReceiver
{
  c(PasswordRecoveryDialog paramPasswordRecoveryDialog)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    b localb = b.a(paramIntent.getIntExtra("state_code", 0));
    switch (i.a[localb.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      PasswordRecoveryDialog.a(this.a).a(new Intent("com.avast.android.generic.app.passwordrecovery.ACTION_RECOVERY_INITIATED"));
      PasswordRecoveryDialog.a(this.a, true);
      continue;
      PasswordRecoveryDialog.a(this.a, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.c
 * JD-Core Version:    0.6.2
 */