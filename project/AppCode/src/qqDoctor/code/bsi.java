import android.content.Context;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.exception.OperationSecurityException;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.utils.SDKUtil;

public class bsi extends bsh
{
  private NetSettingManager a;

  public bsi(Context paramContext)
  {
    super(paramContext);
    if (this.a == null)
      this.a = ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class));
  }

  protected final long a()
  {
    return 0L;
  }

  protected final Object b()
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = this.a.isWifiEnabled();
    boolean bool;
    if (SDKUtil.getSDKVersion() < 9)
      bool = true;
    while (true)
    {
      arrayOfString[1] = String.valueOf(bool);
      try
      {
        arrayOfString[2] = this.a.getCurUsedApnType();
        return arrayOfString;
        bool = this.a.getMobileDataConnectivity();
      }
      catch (OperationSecurityException localOperationSecurityException)
      {
        while (true)
          localOperationSecurityException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsi
 * JD-Core Version:    0.6.2
 */