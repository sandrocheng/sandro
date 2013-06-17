package com.antivirus.ui.scan;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class e
  implements ServiceConnection
{
  e(ScanBeforeInstallActivity paramScanBeforeInstallActivity)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.a.b = ((com.antivirus.a)paramIBinder);
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    com.avg.toolkit.f.a.a("Disconnected");
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.e
 * JD-Core Version:    0.6.2
 */