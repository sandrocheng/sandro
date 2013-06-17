package com.avg.ui.license.qrreader.general;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class j
{
  private final ScheduledExecutorService a = Executors.newSingleThreadScheduledExecutor(new l(null));
  private final Activity b;
  private ScheduledFuture c = null;
  private final BroadcastReceiver d = new m(this, null);

  j(Activity paramActivity)
  {
    this.b = paramActivity;
    a();
  }

  private void e()
  {
    ScheduledFuture localScheduledFuture = this.c;
    if (localScheduledFuture != null)
    {
      localScheduledFuture.cancel(true);
      this.c = null;
    }
  }

  void a()
  {
    e();
    if (!this.a.isShutdown());
    try
    {
      this.c = this.a.schedule(new i(this.b), 300L, TimeUnit.SECONDS);
      label46: return;
    }
    catch (RejectedExecutionException localRejectedExecutionException)
    {
      break label46;
    }
  }

  public void b()
  {
    e();
    this.b.unregisterReceiver(this.d);
  }

  public void c()
  {
    this.b.registerReceiver(this.d, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    a();
  }

  void d()
  {
    e();
    this.a.shutdown();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.j
 * JD-Core Version:    0.6.2
 */