package org.antivirus.wipe;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.antivirus.AvApplication;
import org.antivirus.core.Logger;

final class y
  implements Runnable
{
  y(WipeByApp paramWipeByApp, a parama)
  {
  }

  public final void run()
  {
    int i = 0;
    String str = this.a.a;
    if (Integer.parseInt(Build.VERSION.SDK) >= 5)
      try
      {
        Class localClass1 = Class.forName("android.accounts.AccountManager");
        Class localClass2 = Class.forName("android.accounts.Account");
        Class localClass3 = Class.forName("android.accounts.AccountManagerCallback");
        Method localMethod1 = localClass1.getDeclaredMethod("get", new Class[] { Context.class });
        Method localMethod2 = localClass1.getDeclaredMethod("getAccounts", new Class[0]);
        Method localMethod3 = localClass1.getDeclaredMethod("clearPassword", new Class[] { localClass2 });
        Method localMethod4 = localClass1.getDeclaredMethod("removeAccount", new Class[] { localClass2, localClass3, Handler.class });
        Field localField = localClass2.getDeclaredField("name");
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = AvApplication.getInstance();
        Object localObject1 = localMethod1.invoke(null, arrayOfObject1);
        Object[] arrayOfObject2 = (Object[])localMethod2.invoke(localObject1, new Object[0]);
        if (arrayOfObject2 != null)
        {
          int j = arrayOfObject2.length;
          while (i < j)
          {
            Object localObject2 = arrayOfObject2[i];
            if (localField.get(localObject2).toString().equals(str))
            {
              localMethod3.invoke(localObject1, new Object[] { localObject2 });
              localMethod4.invoke(localObject1, new Object[] { localObject2, null, null });
            }
            i++;
          }
        }
      }
      catch (Exception localException)
      {
        Logger.error("cannot delete account");
        Logger.log(localException);
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.y
 * JD-Core Version:    0.6.2
 */