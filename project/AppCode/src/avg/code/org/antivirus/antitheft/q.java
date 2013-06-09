package org.antivirus.antitheft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Timer;
import org.antivirus.AVSettings;

public final class q
{
  Timer a = null;
  public BroadcastReceiver b = null;

  public final void a(Context paramContext)
  {
    if (AVSettings.getPermLock())
    {
      Intent localIntent = new Intent(paramContext, LockScreen.class);
      localIntent.setFlags(872415232);
      paramContext.startActivity(localIntent);
      if (this.a == null)
      {
        this.a = new Timer();
        s locals = new s(this, paramContext, localIntent);
        this.a.scheduleAtFixedRate(locals, 0L, 5000L);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.q
 * JD-Core Version:    0.6.2
 */