package com.antivirus.ui.scan;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class h
  implements ServiceConnection
{
  h(UnInstall paramUnInstall)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    UnInstall.a(this.a, true);
    UnInstall.a(this.a, ((com.antivirus.a)paramIBinder).a());
    UnInstall.a(this.a);
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    UnInstall.a(this.a, false);
    com.avg.toolkit.f.a.a("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.h
 * JD-Core Version:    0.6.2
 */