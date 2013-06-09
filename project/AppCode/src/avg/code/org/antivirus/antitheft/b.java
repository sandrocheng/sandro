package org.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import org.antivirus.AVService;
import org.antivirus.core.Engine;
import org.antivirus.core.Logger;

public final class b
{
  public static void a(Context paramContext)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, AVService.class);
      localIntent.putExtra("__SAC", 7);
      localIntent.putExtra("__SAD", 1031);
      paramContext.startService(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public static void a(Engine paramEngine, u paramu)
  {
    try
    {
      localBundle = new Bundle();
      if (paramu != null)
        synchronized (u.a)
        {
          localBundle.putDouble("gpslng", paramu.b());
          localBundle.putDouble("gpslat", paramu.a());
          localBundle.putDouble("gpsacc", paramu.e());
          localBundle.putLong("gpstim", paramu.f());
        }
    }
    catch (Exception localException)
    {
      Bundle localBundle;
      synchronized (u.b)
      {
        localBundle.putDouble("netlng", paramu.d());
        localBundle.putDouble("netlat", paramu.c());
        localBundle.putDouble("netacc", paramu.g());
        localBundle.putLong("nettim", paramu.h());
        paramEngine.sendCommMessage(1034, localBundle);
        return;
        localObject6 = finally;
        throw localObject6;
        localException = localException;
        Logger.log(localException);
      }
      synchronized (u.a)
      {
        while (true)
        {
          localBundle.putDouble("gpslng", 0.0D);
          localBundle.putDouble("gpslat", 0.0D);
          localBundle.putDouble("gpsacc", 0.0D);
          localBundle.putLong("gpstim", 0L);
          synchronized (u.b)
          {
            localBundle.putDouble("netlng", 0.0D);
            localBundle.putDouble("netlat", 0.0D);
            localBundle.putDouble("netacc", 0.0D);
            localBundle.putLong("nettim", 0L);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.b
 * JD-Core Version:    0.6.2
 */