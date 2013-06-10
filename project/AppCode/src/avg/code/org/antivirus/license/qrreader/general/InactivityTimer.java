package org.antivirus.license.qrreader.general;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class InactivityTimer
{
  private static final int INACTIVITY_DELAY_SECONDS = 300;
  private final Activity activity;
  private ScheduledFuture inactivityFuture = null;
  private final ScheduledExecutorService inactivityTimer = Executors.newSingleThreadScheduledExecutor(new InactivityTimer.DaemonThreadFactory(null));
  private final BroadcastReceiver powerStatusReceiver = new InactivityTimer.PowerStatusReceiver(this, null);

  InactivityTimer(Activity paramActivity)
  {
    this.activity = paramActivity;
    onActivity();
  }

  private void cancel()
  {
    ScheduledFuture localScheduledFuture = this.inactivityFuture;
    if (localScheduledFuture != null)
    {
      localScheduledFuture.cancel(true);
      this.inactivityFuture = null;
    }
  }

  final void onActivity()
  {
    cancel();
    if (!this.inactivityTimer.isShutdown());
    try
    {
      this.inactivityFuture = this.inactivityTimer.schedule(new FinishListener(this.activity), 300L, TimeUnit.SECONDS);
      label46: return;
    }
    catch (RejectedExecutionException localRejectedExecutionException)
    {
      break label46;
    }
  }

  public final void onPause()
  {
    cancel();
    this.activity.unregisterReceiver(this.powerStatusReceiver);
  }

  public final void onResume()
  {
    this.activity.registerReceiver(this.powerStatusReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    onActivity();
  }

  final void shutdown()
  {
    cancel();
    this.inactivityTimer.shutdown();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.InactivityTimer
 * JD-Core Version:    0.6.2
 */