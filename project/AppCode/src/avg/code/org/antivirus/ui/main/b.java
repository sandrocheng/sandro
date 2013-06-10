package org.antivirus.ui.main;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;
import org.antivirus.core.scanners.c;

final class b
  implements ServiceConnection
{
  b(AntivirusMainScreen paramAntivirusMainScreen)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.a.e = ((AVService.LocalBinder)paramIBinder);
    AntivirusMainScreen.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
    this.a.d = ((AVService.LocalBinder)paramIBinder).getScanResults(c.a);
    AntivirusMainScreen.a(this.a, true);
    AntivirusMainScreen.d(this.a);
    if (AntivirusMainScreen.a(this.a))
      AntivirusMainScreen.e(this.a);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
    AntivirusMainScreen.a(this.a, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.b
 * JD-Core Version:    0.6.2
 */