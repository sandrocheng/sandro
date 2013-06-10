package org.antivirus.ui.scan;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class h
  implements ServiceConnection
{
  h(UnInstall paramUnInstall)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    UnInstall.a(this.a, true);
    UnInstall.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
    UnInstall.a(this.a);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    UnInstall.a(this.a, false);
    Logger.error("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.h
 * JD-Core Version:    0.6.2
 */