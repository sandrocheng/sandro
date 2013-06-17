package com.antivirus.antitheft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.antivirus.c;
import com.avg.toolkit.f.a;
import java.util.Timer;

public class s
{
  private Timer a = null;
  private BroadcastReceiver b = null;

  public void a(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    this.b = new t(this);
    paramContext.registerReceiver(this.b, localIntentFilter);
  }

  public void b(Context paramContext)
  {
    try
    {
      if (this.b != null)
      {
        paramContext.getApplicationContext().unregisterReceiver(this.b);
        this.b = null;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  public void c(Context paramContext)
  {
    if (c.p())
    {
      Intent localIntent = new Intent(paramContext, LockScreen.class);
      localIntent.setFlags(872415232);
      paramContext.startActivity(localIntent);
      if (this.a == null)
      {
        this.a = new Timer();
        u localu = new u(this, paramContext, localIntent);
        this.a.scheduleAtFixedRate(localu, 0L, 5000L);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.s
 * JD-Core Version:    0.6.2
 */