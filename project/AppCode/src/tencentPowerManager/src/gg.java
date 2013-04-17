import QQPIM.ClientVersionInfo;
import QQPIM.DeviceInfo;
import QQPIM.GUIDInfo;
import QQPIM.SUI;
import QQPIM.ServerCmdInfo;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class gg extends BaseManager
{
  private gh a;

  public final int a()
  {
    return this.a.a();
  }

  public final int a(DeviceInfo paramDeviceInfo, AtomicReference<GUIDInfo> paramAtomicReference)
  {
    return this.a.a(paramDeviceInfo, paramAtomicReference);
  }

  public final int a(ArrayList<SUI> paramArrayList)
  {
    return this.a.a(paramArrayList);
  }

  public final int a(List<ClientVersionInfo> paramList, AtomicReference<ServerCmdInfo> paramAtomicReference)
  {
    return this.a.a(paramList, paramAtomicReference);
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new gh();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gg
 * JD-Core Version:    0.6.2
 */