package org.antivirus.core.b;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import org.antivirus.core.AVCoreService;
import org.antivirus.core.Engine;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;

public final class j extends v
{
  public static void a(Engine paramEngine)
  {
    try
    {
      paramEngine.sendCommMessage(1122, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    try
    {
      h localh = new h(paramContext);
      a locala = this.h;
      String str1 = localh.a.d();
      String str2 = localh.a(locala, str1);
      if (str1.equals("0-0"))
        str2 = localh.a(locala, localh.a.d());
      if (str2 != null)
      {
        Intent localIntent = new Intent();
        localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
        localIntent.putExtra("__SAC", 5);
        localIntent.putExtra("__SAD", str2);
        paramContext.startService(localIntent);
      }
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        boolean bool = false;
      }
    }
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1122;
  }

  public final String d()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.j
 * JD-Core Version:    0.6.2
 */