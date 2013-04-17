import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;

final class bng
  implements Runnable
{
  bng(bnd parambnd)
  {
  }

  public final void run()
  {
    ((MarketManager)ManagerCreator.getManager(MarketManager.class)).evaluateSoftware(a.a(bnd.n(this.a).d), bnd.z(this.a), new bnh(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bng
 * JD-Core Version:    0.6.2
 */