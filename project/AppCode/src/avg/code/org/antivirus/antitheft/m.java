package org.antivirus.antitheft;

import android.os.IBinder;
import java.lang.reflect.Method;
import org.antivirus.core.Logger;

final class m
  implements Runnable
{
  m(j paramj)
  {
  }

  public final void run()
  {
    int i = 0;
    try
    {
      Object localObject1 = Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { "hardware" });
      Object localObject2 = Class.forName("android.os.IHardwareService$Stub").getMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { localObject1 });
      Class localClass = localObject2.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = localClass.getMethod("setFlashlightEnabled", arrayOfClass);
      while (i < 3)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Boolean.valueOf(true);
        localMethod.invoke(localObject2, arrayOfObject1);
        Thread.sleep(30000L);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Boolean.valueOf(false);
        localMethod.invoke(localObject2, arrayOfObject2);
        Thread.sleep(10000L);
        i++;
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.m
 * JD-Core Version:    0.6.2
 */