import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;

final class azk
  implements INetworkChangeCallBack
{
  azk(azj paramazj)
  {
  }

  public final void onClosingDateReached()
  {
  }

  public final void onDayChanged()
  {
  }

  public final void onNormalChanged(NetworkInfoEntity paramNetworkInfoEntity)
  {
    azj.a(this.a).removeMessages(0);
    Message localMessage = azj.a(this.a).obtainMessage(0);
    localMessage.obj = paramNetworkInfoEntity;
    localMessage.sendToTarget();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azk
 * JD-Core Version:    0.6.2
 */