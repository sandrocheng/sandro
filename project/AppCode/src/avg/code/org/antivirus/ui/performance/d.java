package org.antivirus.ui.performance;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;
import org.antivirus.ui.WebViewAdsManager;

final class d
  implements ServiceConnection
{
  d(PerformanceActivity paramPerformanceActivity)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    PerformanceActivity.a(this.a).initAds(this.a, 2131230906, ((AVService.LocalBinder)paramIBinder).getFeatures(), "performance");
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.d
 * JD-Core Version:    0.6.2
 */