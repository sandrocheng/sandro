import android.content.Context;
import android.content.res.Resources;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.SDKUtil;

public final class bso extends Thread
{
  public bso(String paramString, Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      long l1 = vh.f();
      kw localkw = a.a(((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).getAppInfo(this.a, 1));
      zk localzk = new zk(this.b, null);
      localzk.a(localkw, localzk.b.c(localkw), 0);
      if (SDKUtil.getSDKVersion() < 8)
      {
        long l2 = vh.f() - l1 << 10;
        if (l2 > 0L)
          ha.a(this.b, QQPimApplication.a().getResources().getString(2131428683) + a.c(l2));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bso
 * JD-Core Version:    0.6.2
 */