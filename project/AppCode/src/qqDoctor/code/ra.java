import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;

public final class ra
  implements Runnable
{
  public ra(boolean paramBoolean)
  {
  }

  public final void run()
  {
    int i = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportChannelInfo();
    if (i != 0)
      if (a.b(i) != fc.a);
    while (true)
    {
      return;
      ho.a().i(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ra
 * JD-Core Version:    0.6.2
 */