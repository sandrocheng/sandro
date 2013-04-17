import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Uri;
import com.tencent.tmsecure.common.BaseManager;

final class fa extends BaseManager
{
  Context a;
  ConnectivityManager b;

  fa()
  {
    Uri.parse("content://telephony/carriers");
    Uri.parse("content://telephony/carriers/current");
    Uri.parse("content://telephony/carriers/preferapn");
    new String[] { "_id", "apn", "type" };
  }

  public final int getSingletonType()
  {
    return 0;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.a.getContentResolver();
    this.a.getSystemService("phone");
    this.a.getSystemService("wifi");
    BluetoothAdapter.getDefaultAdapter();
    this.b = ((ConnectivityManager)this.a.getSystemService("connectivity"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fa
 * JD-Core Version:    0.6.2
 */