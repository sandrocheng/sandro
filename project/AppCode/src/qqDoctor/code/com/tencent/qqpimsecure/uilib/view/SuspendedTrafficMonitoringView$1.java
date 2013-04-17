package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;

class SuspendedTrafficMonitoringView$1
  implements INetworkChangeCallBack
{
  SuspendedTrafficMonitoringView$1(SuspendedTrafficMonitoringView paramSuspendedTrafficMonitoringView)
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
    if (SuspendedTrafficMonitoringView.access$000(this.this$0).isMobileDataConnectivityActive())
    {
      SuspendedTrafficMonitoringView.access$100(this.this$0).removeMessages(0);
      Message localMessage2 = SuspendedTrafficMonitoringView.access$100(this.this$0).obtainMessage(0);
      localMessage2.obj = paramNetworkInfoEntity;
      localMessage2.sendToTarget();
    }
    while (true)
    {
      return;
      if (!SuspendedTrafficMonitoringView.access$000(this.this$0).isWifiActive())
      {
        SuspendedTrafficMonitoringView.access$100(this.this$0).removeMessages(3);
        Message localMessage1 = SuspendedTrafficMonitoringView.access$100(this.this$0).obtainMessage(3);
        localMessage1.obj = paramNetworkInfoEntity;
        localMessage1.sendToTarget();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView.1
 * JD-Core Version:    0.6.2
 */