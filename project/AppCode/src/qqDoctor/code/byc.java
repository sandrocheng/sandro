import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper.BlueToothObserver;
import java.util.ArrayList;

public final class byc extends BroadcastReceiver
{
  public byc(BlueToothHelper paramBlueToothHelper)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(str))
      this.a.c.clear();
    while (true)
    {
      return;
      if ("android.bluetooth.device.action.FOUND".equals(str))
      {
        BluetoothDevice localBluetoothDevice = (BluetoothDevice)paramIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        this.a.c.add(localBluetoothDevice);
      }
      else if (("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(str)) && (this.a.e != null))
      {
        this.a.e.ScanFinish(this.a.c);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byc
 * JD-Core Version:    0.6.2
 */