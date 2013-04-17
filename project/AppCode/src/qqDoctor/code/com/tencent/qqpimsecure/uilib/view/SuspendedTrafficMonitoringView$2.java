package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;

class SuspendedTrafficMonitoringView$2
  implements INetworkChangeCallBack
{
  SuspendedTrafficMonitoringView$2(SuspendedTrafficMonitoringView paramSuspendedTrafficMonitoringView)
  {
  }

  public void onClosingDateReached()
  {
  }

  public void onDayChanged()
  {
  }

  public void onNormalChanged(NetworkInfoEntity paramNetworkInfoEntity)
  {
    if (SuspendedTrafficMonitoringView.access$000(this.this$0).isWifiActive())
    {
      SuspendedTrafficMonitoringView.access$100(this.this$0).removeMessages(1);
      Message localMessage = SuspendedTrafficMonitoringView.access$100(this.this$0).obtainMessage(1);
      localMessage.obj = paramNetworkInfoEntity;
      localMessage.sendToTarget();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView.2
 * JD-Core Version:    0.6.2
 */