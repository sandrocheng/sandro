package org.antivirus.ui.protection;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;
import org.antivirus.ui.WebViewAdsManager;

final class v
  implements ServiceConnection
{
  v(ProtectionActivity paramProtectionActivity)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ProtectionActivity.e(this.a).initAds(this.a, 2131230906, ((AVService.LocalBinder)paramIBinder).getFeatures(), "protection");
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.v
 * JD-Core Version:    0.6.2
 */