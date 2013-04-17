import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;

public final class bwq
  implements INetworkMonitor
{
  public final int addCallback(INetworkChangeCallBack paramINetworkChangeCallBack)
  {
    return 0;
  }

  public final void clearAllLogs()
  {
  }

  public final ArrayList<NetworkInfoEntity> getAllLogs()
  {
    return new ArrayList();
  }

  public final boolean getRefreshState()
  {
    return false;
  }

  public final void notifyConfigChange()
  {
  }

  public final boolean removeCallback(int paramInt)
  {
    return false;
  }

  public final boolean removeCallback(INetworkChangeCallBack paramINetworkChangeCallBack)
  {
    return false;
  }

  public final void setRefreshState(boolean paramBoolean)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwq
 * JD-Core Version:    0.6.2
 */