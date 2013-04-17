import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.tencent.tmsecure.common.BaseManager;

public class ez extends BaseManager
{
  private fa a;

  public final boolean a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.a.a.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 1));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean b()
  {
    NetworkInfo localNetworkInfo = this.a.b.getActiveNetworkInfo();
    boolean bool = false;
    if (localNetworkInfo != null)
    {
      if (localNetworkInfo.getState() == NetworkInfo.State.CONNECTING)
        break label49;
      NetworkInfo.State localState1 = localNetworkInfo.getState();
      NetworkInfo.State localState2 = NetworkInfo.State.CONNECTED;
      bool = false;
      if (localState1 == localState2)
        break label49;
    }
    while (true)
    {
      return bool;
      label49: int i = localNetworkInfo.getType();
      bool = false;
      if (i == 0)
        bool = true;
    }
  }

  public void onCreate(Context paramContext)
  {
    this.a = new fa();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ez
 * JD-Core Version:    0.6.2
 */