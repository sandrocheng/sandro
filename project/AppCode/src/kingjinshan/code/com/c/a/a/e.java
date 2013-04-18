package com.c.a.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;

final class e extends Thread
{
  public Handler a = null;

  public e(d paramd, String paramString)
  {
    super(paramString);
  }

  public final void run()
  {
    Looper.prepare();
    if (!n.b)
    {
      PackageManager localPackageManager = d.b(this.b).getPackageManager();
      n.e = d.b(this.b).getPackageName();
      n.d = n.a(localPackageManager, n.e);
      n.c = j.a(localPackageManager, n.e);
      n.b = n.a(n.d);
    }
    try
    {
      CellLocation.requestLocationUpdate();
      d.a(this.b, (TelephonyManager)d.b(this.b).getSystemService("phone"));
      d.c(this.b).listen(new f(this), 19);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          d.a(this.b, (WifiManager)d.b(this.b).getSystemService("wifi"));
          this.a = new g(this);
          this.a.removeMessages(2);
          this.a.sendEmptyMessage(2);
          this.a.removeMessages(1);
          this.a.sendEmptyMessageDelayed(1, 100L);
          Looper.loop();
          return;
          localException1 = localException1;
          localException1.printStackTrace();
        }
      }
      catch (Exception localException2)
      {
        while (true)
          localException2.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.e
 * JD-Core Version:    0.6.2
 */