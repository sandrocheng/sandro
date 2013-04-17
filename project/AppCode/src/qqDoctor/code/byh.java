import android.content.Intent;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;
import com.tencent.tmsecure.module.powersaving.PowerSavingEventListener;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

final class byh extends bxw
{
  byh(byg parambyg)
  {
  }

  public final void a(Intent paramIntent)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onBatteryLevelChanged(paramIntent);
    }
  }

  public final void a(boolean paramBoolean)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onCloseWifi(paramBoolean);
    }
  }

  public final boolean a()
  {
    return byg.a(this.e);
  }

  public final PowerSavingConfig b()
  {
    return byg.b(this.e);
  }

  public final void b(Intent paramIntent)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onStartBatteryCharging(paramIntent);
    }
  }

  public final void b(boolean paramBoolean)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onOpenWifi(paramBoolean);
    }
  }

  public final void c(Intent paramIntent)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onStopBatteryCharging(paramIntent);
    }
  }

  public final void c(boolean paramBoolean)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onCloseMobileNetwork(paramBoolean);
    }
  }

  public final void d(Intent paramIntent)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onFinishBatteryCharging(paramIntent);
    }
  }

  public final void d(boolean paramBoolean)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onOpenMobileNetwork(paramBoolean);
    }
  }

  public final void e(boolean paramBoolean)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onCloseBlueTooth(paramBoolean);
    }
  }

  public final void f(boolean paramBoolean)
  {
    Iterator localIterator = byg.c(this.e).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      PowerSavingEventListener localPowerSavingEventListener = (PowerSavingEventListener)((WeakReference)localIterator.next()).get();
      if (localPowerSavingEventListener != null)
        localPowerSavingEventListener.onOpenBlueTooth(paramBoolean);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byh
 * JD-Core Version:    0.6.2
 */