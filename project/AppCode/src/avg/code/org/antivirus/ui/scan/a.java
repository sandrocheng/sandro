package org.antivirus.ui.scan;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class a
  implements ServiceConnection
{
  a(FileRemover paramFileRemover)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    FileRemover.a(this.a, true);
    FileRemover.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
    FileRemover.a(this.a);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    FileRemover.a(this.a, false);
    Logger.error("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.a
 * JD-Core Version:    0.6.2
 */