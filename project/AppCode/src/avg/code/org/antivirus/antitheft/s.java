package org.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import java.util.Timer;
import java.util.TimerTask;
import org.antivirus.AVSettings;

final class s extends TimerTask
{
  s(q paramq, Context paramContext, Intent paramIntent)
  {
  }

  public final void run()
  {
    if (AVSettings.getPermLock())
      if (!LockScreen.a())
        this.a.startActivity(this.b);
    while (true)
    {
      return;
      cancel();
      this.c.a.purge();
      this.c.a.cancel();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.s
 * JD-Core Version:    0.6.2
 */