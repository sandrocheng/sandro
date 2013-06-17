package com.antivirus.antitheft;

import android.os.Handler;
import android.widget.Toast;
import com.antivirus.AVService;
import com.antivirus.c;
import java.util.Timer;
import java.util.TimerTask;

class z extends TimerTask
{
  z(LockScreen paramLockScreen, Handler paramHandler, Toast paramToast)
  {
  }

  public void run()
  {
    if ((LockScreen.b()) && (c.p()))
    {
      this.a.post(new aa(this));
      this.b.show();
      LockScreen.b = Integer.valueOf(1 + LockScreen.b.intValue());
      if ((!LockScreen.a()) && (LockScreen.b.intValue() % 5 == 0))
      {
        if (!c.p())
          break label106;
        LockScreen.b = Integer.valueOf(0);
        AVService.a(this.c, 9000, 9002, null);
      }
    }
    while (true)
    {
      return;
      cancel();
      break;
      label106: cancel();
      LockScreen.c.cancel();
      this.c.finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.z
 * JD-Core Version:    0.6.2
 */