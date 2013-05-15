package com.avast.android.mobilesecurity.app.filter.core;

import android.os.Handler;
import com.avast.android.generic.util.m;
import java.lang.reflect.Method;

class p
  implements Runnable
{
  p(PhoneStateChangeReceiver paramPhoneStateChangeReceiver)
  {
  }

  public void run()
  {
    try
    {
      if (!((Boolean)PhoneStateChangeReceiver.c().invoke(PhoneStateChangeReceiver.b(), new Object[0])).booleanValue())
      {
        Method localMethod = PhoneStateChangeReceiver.d();
        Object localObject = PhoneStateChangeReceiver.b();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.TRUE;
        Boolean localBoolean = (Boolean)localMethod.invoke(localObject, arrayOfObject);
        m.c("PhoneCallBlocker: setRadio(true) result: " + localBoolean);
      }
      else
      {
        this.a.a.postDelayed(this, 100L);
      }
    }
    catch (Exception localException)
    {
      m.b("PhoneCallBlocker: FATAL ERROR: could not connect to telephony subsystem", localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.p
 * JD-Core Version:    0.6.2
 */