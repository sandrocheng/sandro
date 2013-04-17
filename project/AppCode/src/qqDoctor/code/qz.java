import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import com.tencent.qqpimsecure.service.ConnectionDetector;

public final class qz
  implements Runnable
{
  public qz(ConnectionDetector paramConnectionDetector)
  {
  }

  public final void run()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)ConnectionDetector.a(this.a).getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
      ConnectionDetector.d(this.a).sendEmptyMessage(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qz
 * JD-Core Version:    0.6.2
 */