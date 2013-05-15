package android.support.v4.b;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;

public class a
{
  private static final c a;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
      a = new f();
    while (true)
    {
      return;
      if (Build.VERSION.SDK_INT >= 13)
        a = new e();
      else if (Build.VERSION.SDK_INT >= 8)
        a = new d();
      else
        a = new b();
    }
  }

  public static NetworkInfo a(ConnectivityManager paramConnectivityManager, Intent paramIntent)
  {
    return paramConnectivityManager.getNetworkInfo(((NetworkInfo)paramIntent.getParcelableExtra("networkInfo")).getType());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.b.a
 * JD-Core Version:    0.6.2
 */