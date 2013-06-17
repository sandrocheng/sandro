package com.antivirus.antitheft;

import android.content.Context;
import android.os.Build.VERSION;
import com.avg.toolkit.f.a;

class q extends r
{
  q(k paramk, Context paramContext)
  {
    super(paramk, paramContext);
  }

  public void run()
  {
    try
    {
      if (Integer.parseInt(Build.VERSION.SDK) >= 5)
        k.a(this.a, this.c);
      while (true)
      {
        this.c = null;
        return;
        k.a(this.a, this.c, false);
      }
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.q
 * JD-Core Version:    0.6.2
 */