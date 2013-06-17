package com.avg.ui.general.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.avg.toolkit.h;

class b
  implements ServiceConnection
{
  b(a parama)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.a.t = true;
    this.a.u = ((h)paramIBinder).a();
    this.a.a(paramComponentName, paramIBinder);
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    com.avg.toolkit.f.a.a("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.a.b
 * JD-Core Version:    0.6.2
 */