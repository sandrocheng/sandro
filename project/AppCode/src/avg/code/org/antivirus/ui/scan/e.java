package org.antivirus.ui.scan;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class e
  implements ServiceConnection
{
  e(ScanBeforeInstallActivity paramScanBeforeInstallActivity)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.a.b = ((AVService.LocalBinder)paramIBinder);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.e
 * JD-Core Version:    0.6.2
 */