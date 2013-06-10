package org.antivirus.ui.help;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class b
  implements ServiceConnection
{
  b(Help paramHelp)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Help.a(this.a, true);
    Help.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
    Help.d(this.a);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
    Help.a(this.a, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.help.b
 * JD-Core Version:    0.6.2
 */