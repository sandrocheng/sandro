package org.antivirus.ui.main;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class a
  implements ServiceConnection
{
  a(ActivationActivity paramActivationActivity)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ActivationActivity.a(this.a, true);
    ActivationActivity.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
    ActivationActivity.a(this.a);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
    ActivationActivity.a(this.a, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.a
 * JD-Core Version:    0.6.2
 */