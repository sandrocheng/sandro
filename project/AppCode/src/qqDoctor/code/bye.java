import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper.BlueToothObserver;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;
import java.util.ArrayList;
import java.util.Iterator;

final class bye extends BlueToothHelper.BlueToothObserver
{
  bye(byd parambyd, PowerSavingConfig paramPowerSavingConfig)
  {
  }

  public final void ScanFinish(ArrayList<BluetoothDevice> paramArrayList)
  {
    if ((0x2 & this.b.mBlueToothAutoCloseCondition) == 2)
      if (paramArrayList.size() == 0)
      {
        ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).disableBluetooth();
        bxw.d = true;
      }
    while (true)
    {
      return;
      byd.a(this.a).g.postDelayed(byd.a(this.a).h, 300000L);
      continue;
      Iterator localIterator = paramArrayList.iterator();
      label72: if (!localIterator.hasNext());
      for (int i = 0; ; i = 1)
      {
        if (i != 0)
          break label128;
        ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).disableBluetooth();
        bxw.d = true;
        break;
        if (((BluetoothDevice)localIterator.next()).getBondState() != 12)
          break label72;
      }
      label128: byd.a(this.a).g.postDelayed(byd.a(this.a).h, 300000L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bye
 * JD-Core Version:    0.6.2
 */