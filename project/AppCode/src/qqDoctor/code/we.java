import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.tools.RunableTaskManager;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.Date;

public final class we
  implements INetworkChangeCallBack
{
  public static boolean a = false;
  private ov b = null;
  private NetworkManager c;
  private NetSettingManager d;
  private it e;
  private byte[] f = new byte[0];
  private int g = 0;
  private int h = 5;
  private boolean i = true;
  private long j;
  private long k;

  public we()
  {
    new we.a();
    this.b = ov.a();
    azu.a = false;
    azu.b = false;
    this.e = new iu(QQPimApplication.a());
    this.c = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
    this.d = ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class));
    ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(fs.d);
  }

  public final void onClosingDateReached()
  {
    ((RunableTaskManager)ManagerCreator.getManager(RunableTaskManager.class)).addTask(new wf(), 1000L);
  }

  public final void onDayChanged()
  {
  }

  public final void onNormalChanged(NetworkInfoEntity paramNetworkInfoEntity)
  {
    this.k = this.c.getInterval();
    if (this.j != this.k)
    {
      this.j = this.k;
      this.i = true;
    }
    while ((!this.i) && (!a))
    {
      this.g = (1 + this.g);
      if (this.g < this.h)
      {
        return;
        this.i = false;
      }
      else
      {
        this.g = 0;
      }
    }
    Date localDate1 = new Date();
    Date localDate2 = paramNetworkInfoEntity.mStartDate;
    int m = this.e.getClosingDayForMonth();
    if (!a.a(localDate1, m).equals(a.a(localDate2, m)))
    {
      azu.a = false;
      azu.b = false;
    }
    new Thread(new wg(this, paramNetworkInfoEntity)).start();
    float f1;
    if (this.e.h())
    {
      NetworkInfoEntity localNetworkInfoEntity = this.e.getTodayNetworkInfoEntity();
      f1 = (float)localNetworkInfoEntity.mUsedForMonth / (float)localNetworkInfoEntity.mTotalForMonth;
      if ((f1 >= 1.0F) && (!azu.b))
      {
        if ((!this.e.o()) || (!this.e.c()) || (SDKUtil.getSDKVersion() < 9))
          break label305;
        azu.b = true;
        azu.a = true;
        this.b.a(f1, true);
        this.d.setMobileDataConnectivity(false);
      }
    }
    while (true)
    {
      if ((f1 < 1.0F) && (f1 >= 0.9F) && (!azu.a) && (this.e.a()))
      {
        azu.a = true;
        this.b.a(f1, false);
      }
      a = false;
      break;
      label305: if (this.e.c())
      {
        azu.b = true;
        azu.a = true;
        this.b.a(f1, false);
      }
    }
  }

  final class a extends BroadcastReceiver
  {
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      paramIntent.getAction().equals("android.intent.action.TIME_SET");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     we
 * JD-Core Version:    0.6.2
 */