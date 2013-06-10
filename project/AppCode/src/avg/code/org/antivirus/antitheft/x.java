package org.antivirus.antitheft;

import android.content.Intent;
import android.os.Handler;
import android.widget.Toast;
import java.util.Timer;
import java.util.TimerTask;
import org.antivirus.AVService;
import org.antivirus.AVSettings;

final class x extends TimerTask
{
  x(LockScreen paramLockScreen, Handler paramHandler, Toast paramToast)
  {
  }

  public final void run()
  {
    if ((LockScreen.b()) && (AVSettings.getPermLock()))
    {
      this.a.post(new y(this));
      this.b.show();
      LockScreen.b = Integer.valueOf(1 + LockScreen.b.intValue());
      if ((!LockScreen.a()) && (LockScreen.b.intValue() % 5 == 0))
      {
        if (!AVSettings.getPermLock())
          break label127;
        LockScreen.b = Integer.valueOf(0);
        Intent localIntent = new Intent(this.c, AVService.class);
        localIntent.putExtra("__SAC", 103);
        this.c.startService(localIntent);
      }
    }
    while (true)
    {
      return;
      cancel();
      break;
      label127: cancel();
      LockScreen.c.cancel();
      this.c.finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.x
 * JD-Core Version:    0.6.2
 */