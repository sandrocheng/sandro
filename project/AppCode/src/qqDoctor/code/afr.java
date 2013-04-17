import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog;
import com.tencent.tmsecure.utils.WifiUtil;
import com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack;

public final class afr
  implements WifiUtil.IWifiApproveCheckCallBack
{
  public afr(WifiApproveDialog paramWifiApproveDialog)
  {
  }

  public final void onWifiApproveCheckFinished(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (WifiApproveDialog.e(this.a));
    while (true)
    {
      return;
      String str = WifiUtil.getSSID();
      if ((str != null) && (str.equals(WifiApproveDialog.f(this.a))))
      {
        Message localMessage = WifiApproveDialog.g(this.a).obtainMessage(100);
        if (!WifiApproveDialog.h(this.a))
        {
          if ((paramBoolean1) || (paramBoolean2))
          {
            if (!WifiApproveDialog.i(this.a))
            {
              Intent localIntent = WifiApproveDialog.a(WifiApproveDialog.c(this.a));
              if (localIntent != null)
              {
                this.a.startActivity(localIntent);
                this.a.finish();
              }
              else
              {
                localMessage.arg1 = 1;
                localMessage.sendToTarget();
              }
            }
            else
            {
              localMessage.arg1 = 1;
              localMessage.sendToTarget();
            }
          }
          else
          {
            ha.b(this.a, 2131428760);
            this.a.finish();
          }
        }
        else
        {
          localMessage.arg1 = 0;
          localMessage.sendToTarget();
        }
      }
      else
      {
        ha.b(this.a, 2131428763);
        this.a.finish();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afr
 * JD-Core Version:    0.6.2
 */