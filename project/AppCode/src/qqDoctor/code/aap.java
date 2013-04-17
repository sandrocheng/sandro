import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.List;

final class aap
  implements Runnable
{
  aap(aan paramaan)
  {
  }

  public final void run()
  {
    if (this.a.c.size() > 100)
      this.a.c = this.a.c.subList(0, 99);
    if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportSoftAction(this.a.c) == 0)
      this.a.c.clear();
    fj.a(this.a.a, this.a.c, "label_sa", "sa.dat");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aap
 * JD-Core Version:    0.6.2
 */