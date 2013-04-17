import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class bur
  implements Runnable
{
  bur(buo.b paramb, ISmsDao paramISmsDao, SmsEntity paramSmsEntity, FilterResult paramFilterResult)
  {
  }

  public final void run()
  {
    ISmsDao localISmsDao = this.b;
    if (buo.b.m(this.a) == null);
    for (SmsEntity localSmsEntity = this.c; ; localSmsEntity = buo.b.m(this.a).convert(this.c))
    {
      localISmsDao.insert(localSmsEntity, this.d);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bur
 * JD-Core Version:    0.6.2
 */