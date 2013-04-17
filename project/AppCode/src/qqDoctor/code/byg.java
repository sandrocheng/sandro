import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings.System;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;
import com.tencent.tmsecure.module.powersaving.PowerSavingEventListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public final class byg extends BaseManager
{
  public PowerSavingConfig a;
  public boolean b = true;
  public Context c;
  public List<WeakReference<PowerSavingEventListener>> d = new ArrayList();
  private IBatteryInfoHelper e;
  private bxw f = new byh(this);

  public final IBatteryInfoHelper a()
  {
    try
    {
      if (this.e == null)
        this.e = new byb(this.c);
      IBatteryInfoHelper localIBatteryInfoHelper = this.e;
      return localIBatteryInfoHelper;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    ContentResolver localContentResolver = this.c.getContentResolver();
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      Settings.System.putInt(localContentResolver, "airplane_mode_on", i);
      Intent localIntent = new Intent("android.intent.action.AIRPLANE_MODE");
      localIntent.putExtra("state", paramBoolean);
      this.c.sendBroadcast(localIntent);
      return;
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.c = paramContext;
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.BATTERY_CHANGED");
    localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    localIntentFilter.addAction("android.net.wifi.RSSI_CHANGED");
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
    localIntentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
    localIntentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
    this.c.registerReceiver(this.f, localIntentFilter);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byg
 * JD-Core Version:    0.6.2
 */