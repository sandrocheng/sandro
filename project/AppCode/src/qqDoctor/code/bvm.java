import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class bvm
  implements Runnable
{
  bvm(bvl parambvl, FilterResult paramFilterResult)
  {
  }

  public final void run()
  {
    SmsEntity localSmsEntity = (SmsEntity)this.b.mData;
    bvk.a.b(this.a.g).remove(localSmsEntity);
    if (bvk.a.c(this.a.g) != null)
      localSmsEntity = bvk.a.c(this.a.g).convert(localSmsEntity);
    bvk.a.d(this.a.g).insert(localSmsEntity, this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvm
 * JD-Core Version:    0.6.2
 */