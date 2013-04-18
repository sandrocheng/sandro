package com.ijinshan.kinghelper.firewall;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.keniu.security.service.RubbishSMSScanServiceCtrl;
import com.keniu.security.service.g;

final class bh
  implements ServiceConnection
{
  bh(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    g localg = (g)paramIBinder;
    FirewallSmsLogListActivity.a(this.a, localg.a());
    if (FirewallSmsLogListActivity.a(this.a) != null)
      FirewallSmsLogListActivity.a(this.a).a(this.a);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (FirewallSmsLogListActivity.a(this.a) != null)
    {
      FirewallSmsLogListActivity.a(this.a).b(this.a);
      FirewallSmsLogListActivity.a(this.a, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bh
 * JD-Core Version:    0.6.2
 */