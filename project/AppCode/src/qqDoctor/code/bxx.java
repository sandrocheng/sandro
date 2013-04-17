import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;

final class bxx
  implements Runnable
{
  bxx(bxw parambxw)
  {
  }

  public final void run()
  {
    ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setWifiEnabled(false);
    bxw.b = true;
    bxw.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxx
 * JD-Core Version:    0.6.2
 */