package org.antivirus.tuneup;

import android.content.pm.PackageManager;

final class bk
  implements Runnable
{
  bk(TrafficMeterActivity paramTrafficMeterActivity, PackageManager paramPackageManager)
  {
  }

  public final void run()
  {
    TrafficMeterActivity.a(this.b, this.a, TrafficMeterActivity.e(this.b));
    this.b.runOnUiThread(new bl(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bk
 * JD-Core Version:    0.6.2
 */