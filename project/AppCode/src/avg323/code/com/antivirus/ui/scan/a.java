package com.antivirus.ui.scan;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class a
  implements ServiceConnection
{
  a(FileRemover paramFileRemover)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    FileRemover.a(this.a, true);
    FileRemover.a(this.a, ((com.antivirus.a)paramIBinder).a());
    FileRemover.a(this.a);
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    FileRemover.a(this.a, false);
    com.avg.toolkit.f.a.a("Disconnected");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.a
 * JD-Core Version:    0.6.2
 */