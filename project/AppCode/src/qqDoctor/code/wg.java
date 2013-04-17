import android.content.SharedPreferences;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;

final class wg
  implements Runnable
{
  wg(we paramwe, NetworkInfoEntity paramNetworkInfoEntity)
  {
  }

  public final void run()
  {
    synchronized (we.a(this.b))
    {
      boolean bool1 = ho.a().O();
      boolean bool2 = new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f());
      if ((!bool1) || (bool2))
        we.b(this.b).a(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wg
 * JD-Core Version:    0.6.2
 */