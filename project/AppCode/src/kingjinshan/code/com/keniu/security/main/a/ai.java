package com.keniu.security.main.a;

import android.content.Context;
import com.keniu.security.traffic.ac;
import com.keniu.security.traffic.y;
import com.keniu.security.traffic.z;
import java.util.Date;

final class ai
  implements Runnable
{
  ai(ah paramah, y paramy, Context paramContext)
  {
  }

  public final void run()
  {
    Date localDate = new Date();
    long l1 = this.a.a(localDate);
    long l2 = this.a.b(localDate);
    z localz = z.a(this.b);
    if (localz.b(true))
    {
      ac localac = localz.b(l1, l2);
      if (localac != null)
        ah.a(this.c, localac.b + localac.c);
      localz.a();
    }
    try
    {
      ah.a(this.c);
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.ai
 * JD-Core Version:    0.6.2
 */