package org.antivirus.core.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.antivirus.core.Logger;

final class p extends BroadcastReceiver
{
  private p(n paramn)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((n.a(paramContext)) && (n.a(this.a)))
      n.b(this.a);
    try
    {
      paramContext.unregisterReceiver(this);
      this.a.a();
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
 * Qualified Name:     org.antivirus.core.a.p
 * JD-Core Version:    0.6.2
 */