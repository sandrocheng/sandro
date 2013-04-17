import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.SDcardNotEnoughDialog;
import com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil.SizeInfo;

final class ajy
  implements View.OnClickListener
{
  ajy(ajx paramajx)
  {
  }

  public final void onClick(View paramView)
  {
    SoftwareUpdateIconView localSoftwareUpdateIconView = (SoftwareUpdateIconView)paramView;
    kv localkv = (kv)localSoftwareUpdateIconView.getTag();
    switch (localSoftwareUpdateIconView.getUpdateState())
    {
    case 3:
    default:
    case 1:
    case 6:
    case 4:
    case 2:
    case 5:
    }
    while (true)
    {
      return;
      nd.a().a(26082);
      PhoneInfoUtil.SizeInfo localSizeInfo2 = new PhoneInfoUtil.SizeInfo();
      PhoneInfoUtil.getStorageCardSize(localSizeInfo2);
      long l2 = localSizeInfo2.a;
      if (localkv.d.getSize() > l2)
      {
        Intent localIntent2 = new Intent();
        localIntent2.setClass(ajx.a(this.a), SDcardNotEnoughDialog.class);
        ajx.b(this.a).startActivity(localIntent2);
      }
      else
      {
        ajx.c(this.a).c(localkv);
        continue;
        PhoneInfoUtil.SizeInfo localSizeInfo1 = new PhoneInfoUtil.SizeInfo();
        PhoneInfoUtil.getStorageCardSize(localSizeInfo1);
        long l1 = localSizeInfo1.a;
        if (localkv.d.getSize() > l1)
        {
          Intent localIntent1 = new Intent();
          localIntent1.setClass(ajx.d(this.a), SDcardNotEnoughDialog.class);
          ajx.e(this.a).startActivity(localIntent1);
        }
        else
        {
          ajx.c(this.a).c(localkv);
          continue;
          ajx.c(this.a).d(localkv);
          continue;
          ajx.c(this.a).f(localkv);
          continue;
          if (!ajx.a(this.a, localkv))
            try
            {
              ajx.c(this.a).e(localkv);
            }
            catch (Exception localException)
            {
              ha.b(TMSApplication.getApplicaionContext(), 2131427509);
            }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajy
 * JD-Core Version:    0.6.2
 */