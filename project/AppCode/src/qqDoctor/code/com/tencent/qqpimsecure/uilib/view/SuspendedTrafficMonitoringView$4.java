package com.tencent.qqpimsecure.uilib.view;

import a;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import iu;

class SuspendedTrafficMonitoringView$4 extends Handler
{
  SuspendedTrafficMonitoringView$4(SuspendedTrafficMonitoringView paramSuspendedTrafficMonitoringView)
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
    }
    while (true)
    {
      return;
      NetworkInfoEntity localNetworkInfoEntity3 = (NetworkInfoEntity)paramMessage.obj;
      if (localNetworkInfoEntity3 == null)
      {
        SuspendedTrafficMonitoringView.access$600(this.this$0);
      }
      else
      {
        SuspendedTrafficMonitoringView.access$702(this.this$0, localNetworkInfoEntity3.mUsedForMonth);
        long l3 = System.currentTimeMillis();
        long l4;
        if (l3 <= SuspendedTrafficMonitoringView.access$800(this.this$0))
        {
          l4 = -1L;
          label102: if ((l4 > 0L) && (SuspendedTrafficMonitoringView.access$900(this.this$0) >= 0L))
            break label315;
          this.this$0.GPRSintervalDerifference = -1L;
          label131: SuspendedTrafficMonitoringView.access$902(this.this$0, SuspendedTrafficMonitoringView.access$700(this.this$0));
          SuspendedTrafficMonitoringView.access$802(this.this$0, l3);
          new String();
          if (!SuspendedTrafficMonitoringView.access$000(this.this$0).isMobileDataConnectivityActive())
            break label422;
          if (!SuspendedTrafficMonitoringView.access$1000(this.this$0))
          {
            if (SuspendedTrafficMonitoringView.access$400(this.this$0) == 1)
              break label350;
            SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837618);
            SuspendedTrafficMonitoringView.access$402(this.this$0, 1);
          }
          label223: if (this.this$0.GPRSintervalDerifference <= 0L)
            break label378;
          SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(4);
          String str10 = a.b(this.this$0.GPRSintervalDerifference);
          SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str10 + "/s");
        }
        while (true)
        {
          SuspendedTrafficMonitoringView.access$1400(this.this$0, localNetworkInfoEntity3);
          break;
          l4 = l3 - SuspendedTrafficMonitoringView.access$800(this.this$0);
          break label102;
          label315: this.this$0.GPRSintervalDerifference = (()(1000.0D * ((SuspendedTrafficMonitoringView.access$700(this.this$0) - SuspendedTrafficMonitoringView.access$900(this.this$0)) / l4)));
          break label131;
          label350: SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837619);
          SuspendedTrafficMonitoringView.access$402(this.this$0, 2);
          break label223;
          label378: SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(0);
          String str9 = a.b(new iu(QQPimApplication.a()).getUsedForMonth());
          SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str9);
          continue;
          label422: if (SuspendedTrafficMonitoringView.access$000(this.this$0).isWifiActive())
          {
            SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(4);
            String str8;
            if (this.this$0.WIFIintervalDerifference > 0L)
            {
              str8 = a.b(this.this$0.WIFIintervalDerifference);
              label470: if (!SuspendedTrafficMonitoringView.access$1000(this.this$0))
              {
                if (SuspendedTrafficMonitoringView.access$400(this.this$0) == 0)
                  break label592;
                SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837623);
                SuspendedTrafficMonitoringView.access$402(this.this$0, 0);
              }
            }
            while (true)
            {
              SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str8 + "/s");
              break;
              SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(0);
              str8 = a.b(new iu(QQPimApplication.a()).getUsedForMonth());
              SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str8);
              break label470;
              label592: SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837619);
              SuspendedTrafficMonitoringView.access$402(this.this$0, 2);
            }
          }
          SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(0);
          String str7 = a.b(new iu(QQPimApplication.a()).getUsedForMonth());
          SuspendedTrafficMonitoringView.access$300(this.this$0).setImageResource(2130837619);
          SuspendedTrafficMonitoringView.access$402(this.this$0, 2);
          SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str7);
        }
        NetworkInfoEntity localNetworkInfoEntity2 = (NetworkInfoEntity)paramMessage.obj;
        label775: label1183: if (localNetworkInfoEntity2 == null)
        {
          SuspendedTrafficMonitoringView.access$600(this.this$0);
        }
        else
        {
          SuspendedTrafficMonitoringView.access$1502(this.this$0, localNetworkInfoEntity2.mUsedForDay);
          long l1 = System.currentTimeMillis();
          long l2;
          if (l1 <= SuspendedTrafficMonitoringView.access$1600(this.this$0))
          {
            l2 = -1L;
            label746: if ((l2 > 0L) && (SuspendedTrafficMonitoringView.access$1700(this.this$0) >= 0L))
              break label950;
            this.this$0.WIFIintervalDerifference = -1L;
            SuspendedTrafficMonitoringView.access$1602(this.this$0, l1);
            SuspendedTrafficMonitoringView.access$1702(this.this$0, SuspendedTrafficMonitoringView.access$1500(this.this$0));
            new String();
            if (!SuspendedTrafficMonitoringView.access$000(this.this$0).isMobileDataConnectivityActive())
              break label1057;
            if (!SuspendedTrafficMonitoringView.access$1000(this.this$0))
            {
              if (SuspendedTrafficMonitoringView.access$400(this.this$0) == 1)
                break label985;
              SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837618);
              SuspendedTrafficMonitoringView.access$402(this.this$0, 1);
            }
          }
          while (true)
          {
            if (this.this$0.GPRSintervalDerifference <= 0L)
              break label1013;
            SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(4);
            String str6 = a.b(this.this$0.GPRSintervalDerifference);
            SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str6 + "/s");
            break;
            l2 = l1 - SuspendedTrafficMonitoringView.access$1600(this.this$0);
            break label746;
            label950: this.this$0.WIFIintervalDerifference = (()(1000.0D * ((SuspendedTrafficMonitoringView.access$1500(this.this$0) - SuspendedTrafficMonitoringView.access$1700(this.this$0)) / l2)));
            break label775;
            label985: SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837619);
            SuspendedTrafficMonitoringView.access$402(this.this$0, 2);
          }
          label1013: SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(0);
          String str5 = a.b(new iu(QQPimApplication.a()).getUsedForMonth());
          SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str5);
          continue;
          label1057: if (SuspendedTrafficMonitoringView.access$000(this.this$0).isWifiActive())
          {
            SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(4);
            if (!SuspendedTrafficMonitoringView.access$1000(this.this$0))
            {
              if (SuspendedTrafficMonitoringView.access$400(this.this$0) == 0)
                break label1183;
              SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837623);
              SuspendedTrafficMonitoringView.access$402(this.this$0, 0);
            }
            while (true)
            {
              if (this.this$0.WIFIintervalDerifference <= 0L)
                break label1211;
              String str4 = a.b(this.this$0.WIFIintervalDerifference);
              SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str4 + "/s");
              break;
              SuspendedTrafficMonitoringView.access$1100(this.this$0, SuspendedTrafficMonitoringView.access$300(this.this$0), 2130837619);
              SuspendedTrafficMonitoringView.access$402(this.this$0, 2);
            }
            label1211: SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(0);
            String str3 = a.b(new iu(QQPimApplication.a()).getUsedForMonth());
            SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str3);
          }
          else
          {
            SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(0);
            String str2 = a.b(new iu(QQPimApplication.a()).getUsedForMonth());
            SuspendedTrafficMonitoringView.access$300(this.this$0).setImageResource(2130837619);
            SuspendedTrafficMonitoringView.access$402(this.this$0, 2);
            SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str2);
            continue;
            if (paramMessage.arg1 == 1)
            {
              RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
              if (SuspendedTrafficMonitoringView.access$1800(this.this$0))
              {
                SuspendedTrafficMonitoringView.access$500(this.this$0).setVisibility(8);
                localLayoutParams1.setMargins(0, 0, 0, 0);
                SuspendedTrafficMonitoringView.access$1802(this.this$0, false);
              }
              while (true)
              {
                SuspendedTrafficMonitoringView.access$1900(this.this$0).setLayoutParams(localLayoutParams1);
                removeMessages(2);
                Message localMessage = obtainMessage(2);
                localMessage.arg1 = 0;
                sendMessageDelayed(localMessage, 2000L);
                break;
                SuspendedTrafficMonitoringView.access$500(this.this$0).setVisibility(0);
                localLayoutParams1.setMargins(0, 12, 0, 0);
                SuspendedTrafficMonitoringView.access$1802(this.this$0, true);
              }
            }
            RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            localLayoutParams2.setMargins(0, 0, 0, 0);
            SuspendedTrafficMonitoringView.access$1900(this.this$0).setLayoutParams(localLayoutParams2);
            SuspendedTrafficMonitoringView.access$500(this.this$0).setVisibility(8);
            continue;
            NetworkInfoEntity localNetworkInfoEntity1 = (NetworkInfoEntity)paramMessage.obj;
            if (localNetworkInfoEntity1 == null)
            {
              SuspendedTrafficMonitoringView.access$600(this.this$0);
            }
            else
            {
              SuspendedTrafficMonitoringView.access$1200(this.this$0).setVisibility(0);
              String str1 = a.b(new iu(QQPimApplication.a()).getUsedForMonth());
              SuspendedTrafficMonitoringView.access$300(this.this$0).setImageResource(2130837619);
              SuspendedTrafficMonitoringView.access$402(this.this$0, 2);
              SuspendedTrafficMonitoringView.access$1300(this.this$0).setText(str1);
              SuspendedTrafficMonitoringView.access$1400(this.this$0, localNetworkInfoEntity1);
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView.4
 * JD-Core Version:    0.6.2
 */