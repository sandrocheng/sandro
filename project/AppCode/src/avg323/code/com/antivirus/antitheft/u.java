package com.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import com.antivirus.c;
import java.util.Timer;
import java.util.TimerTask;

class u extends TimerTask
{
  u(s params, Context paramContext, Intent paramIntent)
  {
  }

  public void run()
  {
    if (c.p())
      if (!LockScreen.a())
        this.a.startActivity(this.b);
    while (true)
    {
      return;
      cancel();
      s.a(this.c).purge();
      s.a(this.c).cancel();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.u
 * JD-Core Version:    0.6.2
 */