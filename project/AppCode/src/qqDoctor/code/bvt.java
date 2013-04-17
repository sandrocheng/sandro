import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.IContactDao;

final class bvt extends buh.a
{
  bvt(bvp.b paramb)
  {
  }

  final boolean a()
  {
    CallLogEntity localCallLogEntity = (CallLogEntity)this.a;
    if ((this.b == 2) && (bvp.b.a(this.g).contains(localCallLogEntity.phonenum, 0)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  final void b()
  {
    CallLogEntity localCallLogEntity = (CallLogEntity)this.a;
    if (localCallLogEntity.type == 3)
      localCallLogEntity.duration = (((Long)this.d[0]).longValue() - localCallLogEntity.date);
    bvp.b.a(this.g, this, bvp.b.b(this.g), true, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvt
 * JD-Core Version:    0.6.2
 */