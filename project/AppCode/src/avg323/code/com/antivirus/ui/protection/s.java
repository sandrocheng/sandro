package com.antivirus.ui.protection;

import android.app.AlertDialog;
import com.antivirus.m;

class s
  implements Runnable
{
  s(r paramr)
  {
  }

  public void run()
  {
    if ((r.a()) && (r.a(this.a) != null))
    {
      r.a(this.a).dismiss();
      r.a(this.a, null);
      r.a(this.a, null);
      r.a(this.a, m.a(r.b(this.a), 2131296598));
    }
    try
    {
      if (this.a.a != null)
        r.c(this.a).unregisterReceiver(this.a.a);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.s
 * JD-Core Version:    0.6.2
 */