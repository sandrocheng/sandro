import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.OptimizeManager;

final class nf
  implements Runnable
{
  nf(nd paramnd)
  {
  }

  public final void run()
  {
    ho localho = ho.a();
    long l1 = localho.dC();
    if (l1 == -1L);
    while (true)
    {
      return;
      localho.dD();
      OptimizeManager localOptimizeManager = (OptimizeManager)ManagerCreator.getManager(OptimizeManager.class);
      long l2 = localOptimizeManager.getMemoryHelper().getFreeMemery();
      long l3 = localOptimizeManager.getMemoryHelper().getTotalMemery();
      int i = (int)((int)(100L - l2 * 100L / l3) - l1);
      this.a.b(26420, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     nf
 * JD-Core Version:    0.6.2
 */