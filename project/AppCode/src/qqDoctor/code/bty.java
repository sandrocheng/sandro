import android.content.ComponentName;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import com.tencent.tmsecure.common.ISDKClient.Proxy;
import java.util.concurrent.ConcurrentHashMap;

final class bty extends btx.a
{
  bty(btx parambtx, ServiceInfo paramServiceInfo, Object paramObject)
  {
    super(paramServiceInfo);
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.b = ISDKClient.Proxy.asInterface(paramIBinder);
    btx.a(this.c).put(this.a.packageName, this.b);
    synchronized (this.d)
    {
      this.d.notify();
      return;
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    btx.a(this.c).remove(this.a.packageName);
    this.b = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bty
 * JD-Core Version:    0.6.2
 */