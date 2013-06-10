package org.antivirus.ui.privacy;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.core.Logger;
import org.antivirus.ui.WebViewAdsManager;

final class a
  implements ServiceConnection
{
  a(PrivacyActivity paramPrivacyActivity)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    PrivacyActivity.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
    PrivacyActivity.a(this.a);
    PrivacyActivity.c(this.a).initAds(this.a, 2131230906, PrivacyActivity.b(this.a), "privacy");
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Logger.error("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.a
 * JD-Core Version:    0.6.2
 */