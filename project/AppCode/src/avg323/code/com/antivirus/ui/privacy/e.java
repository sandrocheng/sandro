package com.antivirus.ui.privacy;

import android.content.Context;
import com.antivirus.applocker.c;
import com.avg.ui.general.a.a;

class e
  implements Runnable
{
  e(b paramb, Context paramContext)
  {
  }

  public void run()
  {
    c localc = new c();
    b.a(this.b, localc.g(this.a));
    b.w(this.b).runOnUiThread(new f(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.privacy.e
 * JD-Core Version:    0.6.2
 */