package com.antivirus;

import android.os.Binder;
import android.os.Messenger;
import com.antivirus.core.scanners.c;
import com.antivirus.core.scanners.n;
import com.avg.toolkit.e.e;

public class a extends Binder
  implements com.avg.toolkit.h
{
  public a(AVService paramAVService)
  {
  }

  public int a(Messenger paramMessenger, n paramn, c paramc)
  {
    if (AVService.a(this.a) == null);
    for (int i = -1; ; i = AVService.a(this.a).a(paramMessenger, paramn, paramc))
      return i;
  }

  public com.antivirus.core.scanners.h a(c paramc)
  {
    if (AVService.a(this.a) == null);
    for (com.antivirus.core.scanners.h localh = null; ; localh = AVService.a(this.a).b(paramc))
      return localh;
  }

  public com.avg.toolkit.e.a a()
  {
    if (this.a.b == null);
    for (com.avg.toolkit.e.a locala = null; ; locala = e.a())
      return locala;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.a
 * JD-Core Version:    0.6.2
 */