import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;

public final class byd
  implements Runnable
{
  byd(BlueToothHelper paramBlueToothHelper, PowerSavingConfig paramPowerSavingConfig)
  {
  }

  public final void run()
  {
    BlueToothHelper localBlueToothHelper;
    bye localbye;
    if (((0x2 & this.b.mBlueToothAutoCloseCondition) == 2) || ((0x4 & this.b.mBlueToothAutoCloseCondition) == 4))
    {
      localBlueToothHelper = this.a;
      localbye = new bye(this, this.b);
      if ((localBlueToothHelper.b != null) && (localBlueToothHelper.b.isEnabled()));
    }
    while (true)
    {
      return;
      if (!localBlueToothHelper.b.isDiscovering())
      {
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.bluetooth.device.action.FOUND");
        localIntentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        localIntentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        localIntentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        localBlueToothHelper.d.registerReceiver(localBlueToothHelper.j, localIntentFilter);
        localBlueToothHelper.b.startDiscovery();
        localBlueToothHelper.e = localbye;
        continue;
        if ((0x8 & this.b.mBlueToothAutoCloseCondition) == 8)
          if (!this.a.f)
          {
            ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).disableBluetooth();
            bxw.d = true;
          }
          else
          {
            this.a.g.postDelayed(this.a.h, 300000L);
          }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byd
 * JD-Core Version:    0.6.2
 */