package org.antivirus.widget.activities;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;

final class a
  implements ServiceConnection
{
  a(WidgetConfigurationActivity paramWidgetConfigurationActivity)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    WidgetConfigurationActivity.a(this.a, true);
    WidgetConfigurationActivity.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
    WidgetConfigurationActivity.a(this.a);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
    WidgetConfigurationActivity.a(this.a, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.activities.a
 * JD-Core Version:    0.6.2
 */