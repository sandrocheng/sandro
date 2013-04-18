package com.keniu.security.main;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bk extends BroadcastReceiver
{
  private bk(MainActivity paramMainActivity, byte paramByte)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("checkStatus", false))
      if (this.a.e())
      {
        MainActivity.e(this.a).c();
        MainActivity.g(this.a);
      }
    while (true)
    {
      return;
      if (paramIntent.getBooleanExtra("notify_enter_root", false))
      {
        boolean bool = paramIntent.getBooleanExtra("notify_enter_root_value", false);
        MainActivity.e(this.a).a(bool);
        MainActivity.g(this.a);
      }
      else
      {
        bn.a().b();
        MainActivity.n(this.a);
        MainActivity.o(this.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bk
 * JD-Core Version:    0.6.2
 */