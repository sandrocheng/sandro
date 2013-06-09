package org.antivirus;

import android.os.Binder;
import android.os.Messenger;
import org.antivirus.a.h;
import org.antivirus.a.i;
import org.antivirus.core.Engine;
import org.antivirus.core.b.e;
import org.antivirus.core.scanners.c;
import org.antivirus.core.scanners.g;
import org.antivirus.core.scanners.m;

public class AVService$LocalBinder extends Binder
{
  public AVService$LocalBinder(AVService paramAVService)
  {
  }

  public org.antivirus.core.b.a getFeatures()
  {
    if (AVService.a(this.a) == null);
    for (org.antivirus.core.b.a locala = null; ; locala = AVService.b(this.a).a)
      return locala;
  }

  public g getScanResults(c paramc)
  {
    if (AVService.c(this.a) == null);
    for (g localg = null; ; localg = AVService.d(this.a).getScanResults(paramc))
      return localg;
  }

  public int setHandler(Messenger paramMessenger, m paramm, c paramc)
  {
    if (AVService.e(this.a) == null);
    for (int i = -1; ; i = AVService.f(this.a).mScanManager.a(paramMessenger, paramm, paramc))
      return i;
  }

  public boolean setVersionUpdateUIHandler(i parami)
  {
    org.antivirus.a.a locala = AVService.g(this.a);
    if (locala.a != null)
      locala.a.a(parami);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.AVService.LocalBinder
 * JD-Core Version:    0.6.2
 */