package com.avast.android.mobilesecurity.scan;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class f
  implements ServiceConnection
{
  f(ScanFragment paramScanFragment)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ScanFragment.a(this.a, ((i)paramIBinder).a());
    ScanFragment.c(this.a).a(this.a);
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (ScanFragment.c(this.a) != null)
    {
      ScanFragment.c(this.a).b(this.a);
      ScanFragment.a(this.a, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.f
 * JD-Core Version:    0.6.2
 */