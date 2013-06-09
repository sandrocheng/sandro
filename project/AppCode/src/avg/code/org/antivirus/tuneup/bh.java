package org.antivirus.tuneup;

import android.widget.TableLayout;

final class bh
  implements Runnable
{
  bh(TrafficMeterActivity paramTrafficMeterActivity, boolean paramBoolean, TableLayout paramTableLayout)
  {
  }

  public final void run()
  {
    double[] arrayOfDouble = ba.a(this.c.getApplicationContext()).a(this.a);
    TrafficMeterActivity.c(this.c);
    this.c.runOnUiThread(new bi(this, arrayOfDouble));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bh
 * JD-Core Version:    0.6.2
 */