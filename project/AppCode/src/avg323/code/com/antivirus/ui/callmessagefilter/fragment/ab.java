package com.antivirus.ui.callmessagefilter.fragment;

import android.support.v4.app.i;
import com.antivirus.core.scanners.ad;
import com.antivirus.m;
import com.antivirus.ui.callmessagefilter.b.d;
import java.util.Date;

class ab
  implements Runnable
{
  ab(v paramv, i parami, com.antivirus.ui.callmessagefilter.b.b paramb, boolean paramBoolean)
  {
  }

  public void run()
  {
    com.antivirus.core.b.a.b localb = com.antivirus.core.b.a.b.a(this.a);
    switch (ae.b[((d)this.b.d()).ordinal()])
    {
    case 3:
    case 4:
    default:
    case 5:
    case 2:
    }
    while (true)
    {
      localb.a(this.b.e(), ((d)this.b.d()).b(), this.b.k(), this.b.f(), this.b.i().getTime());
      this.a.runOnUiThread(new ac(this));
      return;
      String str = ad.a(this.d.h(), this.b.e(), m.a(this.d.h(), 2131296603), m.a(this.d.h(), 2131296604));
      if (str != null)
        this.b.a(str.substring(0, 50));
      if (this.c)
        v.a(this.d, (d)this.b.d(), this.a, this.b, localb);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.ab
 * JD-Core Version:    0.6.2
 */