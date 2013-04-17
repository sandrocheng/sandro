import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;

final class bvx extends buh.a
{
  bvx(bvp.b paramb)
  {
  }

  final boolean a()
  {
    CallLogEntity localCallLogEntity = (CallLogEntity)this.a;
    if ((this.b != 2) && (localCallLogEntity.type != 2) && (bvp.b.g(this.g).contains(localCallLogEntity.phonenum)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  final void b()
  {
    bvp.b localb = this.g;
    ICallLogDao localICallLogDao = bvp.b.d(this.g);
    if (this.b == 1);
    for (boolean bool = true; ; bool = false)
    {
      bvp.b.a(localb, this, localICallLogDao, bool, true);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvx
 * JD-Core Version:    0.6.2
 */