package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.service.SecureService;
import vc;

class LocationShowerSuspessionView$1 extends Handler
{
  LocationShowerSuspessionView$1(LocationShowerSuspessionView paramLocationShowerSuspessionView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      LocationShowerSuspessionView.access$000(this.this$0).setVisibility(8);
      continue;
      LocationShowerSuspessionView.access$100(this.this$0).setVisibility(4);
      LocationShowerSuspessionView.access$200(this.this$0).setVisibility(0);
      LocationShowerSuspessionView.access$300(this.this$0).removeMessages(1);
      Message localMessage3 = LocationShowerSuspessionView.access$300(this.this$0).obtainMessage(2);
      LocationShowerSuspessionView.access$300(this.this$0).sendMessageDelayed(localMessage3, 350L);
      continue;
      LocationShowerSuspessionView.access$200(this.this$0).setVisibility(4);
      LocationShowerSuspessionView.access$100(this.this$0).setVisibility(0);
      LocationShowerSuspessionView.access$300(this.this$0).removeMessages(2);
      Message localMessage2 = LocationShowerSuspessionView.access$300(this.this$0).obtainMessage(1);
      LocationShowerSuspessionView.access$300(this.this$0).sendMessageDelayed(localMessage2, 350L);
      continue;
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation.setDuration(1001L);
      LocationShowerSuspessionView.access$000(this.this$0).startAnimation(localAlphaAnimation);
      LocationShowerSuspessionView.access$100(this.this$0).startAnimation(localAlphaAnimation);
      LocationShowerSuspessionView.access$200(this.this$0).startAnimation(localAlphaAnimation);
      LocationShowerSuspessionView.access$300(this.this$0).removeMessages(3);
      Message localMessage1 = LocationShowerSuspessionView.access$300(this.this$0).obtainMessage(0);
      LocationShowerSuspessionView.access$300(this.this$0).sendMessageDelayed(localMessage1, 1001L);
      continue;
      ((TelephonyManager)LocationShowerSuspessionView.access$400(this.this$0).getSystemService("phone")).getCallState();
      if (LocationShowerSuspessionView.isinorout == LocationShowerSuspessionView.out)
      {
        Intent localIntent = new Intent();
        localIntent.setClass(LocationShowerSuspessionView.access$400(this.this$0), SecureService.class);
        localIntent.setAction(vc.b);
        LocationShowerSuspessionView.access$400(this.this$0).startService(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.LocationShowerSuspessionView.1
 * JD-Core Version:    0.6.2
 */