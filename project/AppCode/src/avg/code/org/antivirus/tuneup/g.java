package org.antivirus.tuneup;

import android.content.Context;
import android.content.IntentFilter;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;

public final class g
{
  public h a;
  private h b;

  public final void a(Context paramContext)
  {
    if ((AVSettings.isPowerSavingMode()) && (this.b == null))
    {
      this.b = new h(1);
      paramContext.registerReceiver(this.b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }
  }

  public final void b(Context paramContext)
  {
    try
    {
      if (this.a != null)
      {
        paramContext.unregisterReceiver(this.a);
        this.a = null;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void c(Context paramContext)
  {
    try
    {
      if (this.b != null)
      {
        paramContext.unregisterReceiver(this.b);
        this.b = null;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.g
 * JD-Core Version:    0.6.2
 */