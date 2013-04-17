package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.ui.activity.network.NetWorkManageSettingActivity;
import iu;

class SuspendedTrafficMonitoringView$3
  implements View.OnClickListener
{
  SuspendedTrafficMonitoringView$3(SuspendedTrafficMonitoringView paramSuspendedTrafficMonitoringView)
  {
  }

  public void onClick(View paramView)
  {
    new iu(QQPimApplication.a()).e(false);
    if (NetWorkManageSettingActivity.a != null)
      NetWorkManageSettingActivity.a.getView().onResume();
    Intent localIntent = new Intent();
    localIntent.setClass(SuspendedTrafficMonitoringView.access$200(this.this$0), SecureService.class);
    localIntent.setAction("switch_suspession_window");
    SuspendedTrafficMonitoringView.access$200(this.this$0).startService(localIntent);
    SuspendedTrafficMonitoringView.access$300(this.this$0).setVisibility(4);
    SuspendedTrafficMonitoringView.access$402(this.this$0, 3);
    SuspendedTrafficMonitoringView.access$500(this.this$0).setVisibility(8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView.3
 * JD-Core Version:    0.6.2
 */