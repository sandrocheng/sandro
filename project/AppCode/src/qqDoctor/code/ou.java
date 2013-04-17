import com.tencent.tmsecure.module.aresengine.ISpecialSmsChecker;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.Iterator;
import java.util.List;

final class ou
  implements ISpecialSmsChecker
{
  ou(op paramop)
  {
  }

  public final boolean isBlocked(SmsEntity paramSmsEntity)
  {
    return true;
  }

  public final boolean isMatch(SmsEntity paramSmsEntity)
  {
    synchronized (op.m(this.a))
    {
      Iterator localIterator = op.m(this.a).iterator();
      while (localIterator.hasNext())
        if (((lt)localIterator.next()).a(paramSmsEntity))
        {
          bool = true;
          return bool;
        }
      boolean bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ou
 * JD-Core Version:    0.6.2
 */