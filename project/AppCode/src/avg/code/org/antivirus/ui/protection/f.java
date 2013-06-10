package org.antivirus.ui.protection;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class f
  implements ServiceConnection
{
  f(FileScannerActivity paramFileScannerActivity)
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
 * Qualified Name:     org.antivirus.ui.protection.f
 * JD-Core Version:    0.6.2
 */