import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.ui.activity.SplashActivity;
import com.tencent.qqpimsecure.widget.NetSetWidgetProvider;
import com.tencent.tmsecure.exception.OperationSecurityException;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.utils.SDKUtil;

public final class bsj extends Thread
{
  public bsj(NetSetWidgetProvider paramNetSetWidgetProvider, Intent paramIntent)
  {
  }

  public final void run()
  {
    int i = 1;
    nd localnd = nd.a();
    if (this.a.getIntExtra("msg_position", -1) == i)
    {
      Intent localIntent = new Intent();
      localIntent.setFlags(268435456);
      localIntent.setClass(NetSetWidgetProvider.a(this.b), SplashActivity.class);
      NetSetWidgetProvider.a(this.b).startActivity(localIntent);
      localnd.a(26143);
    }
    while (true)
    {
      return;
      label108: label126: int j;
      if (this.a.getIntExtra("msg_position", -1) == 2)
      {
        boolean bool9 = this.b.a.isWifiEnabled();
        NetSettingManager localNetSettingManager = this.b.a;
        int i1;
        Context localContext2;
        if (!bool9)
        {
          boolean bool10 = localNetSettingManager.setWifiEnabled(i);
          if (!bool9)
            break label180;
          i1 = 26145;
          localnd.a(i1);
          if (!bool10)
            break label205;
          localContext2 = NetSetWidgetProvider.a(this.b);
          if (!bool9)
            break label188;
        }
        label180: label188: for (String str2 = NetSetWidgetProvider.a(this.b).getString(2131428958); ; str2 = NetSetWidgetProvider.a(this.b).getString(2131428957))
        {
          ha.b(localContext2, str2);
          break;
          j = 0;
          break label108;
          i1 = 26144;
          break label126;
        }
        label205: ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131429076));
      }
      else if (this.a.getIntExtra("msg_position", -1) == 3)
      {
        if (SDKUtil.getSDKVersion() < 9)
        {
          fs.a(NetSetWidgetProvider.a(this.b));
        }
        else
        {
          boolean bool7 = this.b.a.getMobileDataConnectivity();
          boolean bool8;
          label296: String str1;
          if (bool7)
          {
            bool8 = this.b.a.setMobileDataConnectivity(false);
            if (!bool8)
              break label396;
            Context localContext1 = NetSetWidgetProvider.a(this.b);
            if (!bool7)
              break label371;
            str1 = NetSetWidgetProvider.a(this.b).getString(2131428964);
            label329: ha.b(localContext1, str1);
            if (!bool7)
              break label388;
          }
          label388: for (int n = 26147; ; n = 26146)
          {
            localnd.a(n);
            break;
            bool8 = this.b.a.setMobileDataConnectivity(j);
            break label296;
            label371: str1 = NetSetWidgetProvider.a(this.b).getString(2131428963);
            break label329;
          }
          label396: fs.a(NetSetWidgetProvider.a(this.b));
        }
      }
      else if (this.a.getIntExtra("msg_position", -1) == 4)
      {
        if (SDKUtil.getSDKVersion() > 14)
        {
          ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131429076));
        }
        else
        {
          try
          {
            boolean bool6 = this.b.a.getApnState();
            bool1 = bool6;
            if (!bool1)
              ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131428962));
          }
          catch (OperationSecurityException localOperationSecurityException1)
          {
            while (true)
            {
              localOperationSecurityException1.printStackTrace();
              boolean bool1 = false;
            }
          }
          try
          {
            int m = this.b.a.getCurUsedApnType();
            k = m;
            if (k != 0);
          }
          catch (OperationSecurityException localOperationSecurityException2)
          {
            while (true)
            {
              int k;
              try
              {
                boolean bool5 = this.b.a.switchTo(1);
                bool4 = bool5;
                if (bool4)
                {
                  ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131428960));
                  localnd.a(26148);
                  break;
                  localOperationSecurityException2 = localOperationSecurityException2;
                  localOperationSecurityException2.printStackTrace();
                  k = 0;
                }
              }
              catch (OperationSecurityException localOperationSecurityException4)
              {
                localOperationSecurityException4.printStackTrace();
                boolean bool4 = false;
                continue;
                ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131429076));
                continue;
              }
              if (k == j)
                try
                {
                  boolean bool3 = this.b.a.switchTo(0);
                  bool2 = bool3;
                  if (bool2)
                    ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131428959));
                }
                catch (OperationSecurityException localOperationSecurityException3)
                {
                  while (true)
                  {
                    localOperationSecurityException3.printStackTrace();
                    boolean bool2 = false;
                  }
                  ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131429076));
                }
              else
                ha.b(NetSetWidgetProvider.a(this.b), NetSetWidgetProvider.a(this.b).getString(2131429076));
            }
          }
        }
      }
      else if (this.a.getIntExtra("msg_position", -1) == 5)
      {
        fs.a(NetSetWidgetProvider.a(this.b));
        localnd.a(26149);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsj
 * JD-Core Version:    0.6.2
 */