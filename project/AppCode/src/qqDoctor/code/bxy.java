import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;

final class bxy
  implements Runnable
{
  bxy(bxw parambxw)
  {
  }

  public final void run()
  {
    bxw.c = true;
    bxw.b(this.a);
    ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxy
 * JD-Core Version:    0.6.2
 */