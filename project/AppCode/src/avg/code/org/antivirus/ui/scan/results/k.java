package org.antivirus.ui.scan.results;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.antivirus.AVService.LocalBinder;

final class k
  implements ServiceConnection
{
  k(ScanResultsExpandable paramScanResultsExpandable)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ScanResultsExpandable.a(this.a, true);
    this.a.f = ((AVService.LocalBinder)paramIBinder);
    ScanResultsExpandable.a(this.a);
    ScanResultsExpandable.a(this.a, ((AVService.LocalBinder)paramIBinder).getFeatures());
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    ScanResultsExpandable.a(this.a, false);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.k
 * JD-Core Version:    0.6.2
 */