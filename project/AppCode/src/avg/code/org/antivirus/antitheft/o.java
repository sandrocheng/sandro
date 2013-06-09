package org.antivirus.antitheft;

import android.content.Context;
import android.os.Build.VERSION;
import org.antivirus.core.Logger;

final class o extends p
{
  o(j paramj, Context paramContext)
  {
    super(paramj, paramContext);
  }

  public final void run()
  {
    try
    {
      if (Integer.parseInt(Build.VERSION.SDK) >= 5)
        this.a.a(this.b);
      while (true)
      {
        this.b = null;
        return;
        j.a(this.b, false);
      }
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.o
 * JD-Core Version:    0.6.2
 */