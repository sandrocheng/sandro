import QQPIM.CloudCmdRes;
import QQPIM.CloudInfoRes;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.market.SDcardNotEnoughDialog;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil.SizeInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class oh extends Handler
{
  oh(of paramof)
  {
  }

  private void a(kv paramkv, boolean paramBoolean)
  {
    int i = 1;
    if (paramkv == null);
    while (true)
    {
      return;
      String str = paramkv.d.B();
      if (str != null)
      {
        qr localqr = qr.a(QQPimApplication.a());
        CloudInfoRes localCloudInfoRes = localqr.c(str);
        if (localCloudInfoRes != null)
        {
          localCloudInfoRes.setPhase(3);
          localCloudInfoRes.setTime((int)(System.currentTimeMillis() / 1000L));
          ArrayList localArrayList1 = localCloudInfoRes.getCmdres();
          int j;
          if ((localArrayList1 != null) && (localArrayList1.size() > 0))
          {
            CloudCmdRes localCloudCmdRes = (CloudCmdRes)localArrayList1.get(0);
            if (paramBoolean)
            {
              j = i;
              label104: localCloudCmdRes.setRes(j);
            }
          }
          else
          {
            if (!paramBoolean)
              break label154;
          }
          while (true)
          {
            localCloudInfoRes.setRes(i);
            ArrayList localArrayList2 = new ArrayList();
            localArrayList2.add(localCloudInfoRes);
            localqr.a(localArrayList2);
            break;
            j = 0;
            break label104;
            label154: i = 0;
          }
        }
      }
      else
      {
        new Thread(new oi(this, paramkv, paramBoolean)).start();
      }
    }
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    while (true)
    {
      return;
      of.c(this.a).a((kv)paramMessage.obj);
      continue;
      kv localkv3 = (kv)paramMessage.obj;
      if (localkv3.mProgress > 0.0F)
      {
        of.c(this.a).a(localkv3);
        continue;
        kv localkv2 = (kv)paramMessage.obj;
        of.c(this.a).e(localkv2.d.getPackageName());
        a(localkv2, true);
        File localFile = of.d(localkv2);
        if ((localFile != null) && (localFile.exists()));
        try
        {
          of.d(this.a).installApp(of.d(localkv2));
          if (!of.a())
            continue;
          TMSService.stopService(of.class);
        }
        catch (Exception localException)
        {
          while (true)
            ha.b(TMSApplication.getApplicaionContext(), 2131427509);
        }
        of.c(this.a).b((kv)paramMessage.obj);
        continue;
        kv localkv1 = (kv)paramMessage.obj;
        of.c(this.a).c(localkv1);
        PhoneInfoUtil.SizeInfo localSizeInfo = new PhoneInfoUtil.SizeInfo();
        PhoneInfoUtil.getStorageCardSize(localSizeInfo);
        if (localSizeInfo.a == 0L)
        {
          Intent localIntent = new Intent();
          localIntent.setClass(TMSApplication.getApplicaionContext(), SDcardNotEnoughDialog.class);
          localIntent.setFlags(268435456);
          TMSApplication.getApplicaionContext().startActivity(localIntent);
        }
        else
        {
          a(localkv1, false);
          continue;
          of.c(this.a).e(((kv)paramMessage.obj).d.getPackageName());
          continue;
          List localList = (List)paramMessage.obj;
          int i = 0;
          while (i < localList.size())
            if (((kv)localList.get(i)).isWaitingToPaused)
              localList.remove(i);
            else
              i++;
          of.c(this.a).b(localList);
          continue;
          of.c(this.a).a((List)paramMessage.obj);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     oh
 * JD-Core Version:    0.6.2
 */