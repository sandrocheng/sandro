package org.antivirus.ui.versionUpdate;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class d
  implements ServiceConnection
{
  d(VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      VersionUpdateProgressDialog.a(this.a, (AVService.LocalBinder)paramIBinder);
      if (!VersionUpdateProgressDialog.b(this.a).setVersionUpdateUIHandler(VersionUpdateProgressDialog.a(this.a)))
        VersionUpdateProgressDialog.d(this.a).postDelayed(new e(this), 1000L);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
    VersionUpdateProgressDialog.a(this.a, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.d
 * JD-Core Version:    0.6.2
 */