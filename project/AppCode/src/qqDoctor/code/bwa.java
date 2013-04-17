import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.IShortCallChecker;

final class bwa extends buh.a
{
  bwa(bvp.b paramb)
  {
  }

  final boolean a()
  {
    long l1 = ((Long)this.d[0]).longValue();
    CallLogEntity localCallLogEntity = (CallLogEntity)this.a;
    long l2 = l1 - localCallLogEntity.date;
    boolean bool;
    if (bvp.b.i(this.g) != null)
      bool = bvp.b.i(this.g).isShortCall(localCallLogEntity, l2);
    while (true)
    {
      return bool;
      if ((!bvp.b.h(this.g)) && (this.b == 2) && (localCallLogEntity.type == 3) && (localCallLogEntity.duration <= 8000L) && (l1 - localCallLogEntity.date <= 8000L))
        bool = true;
      else
        bool = false;
    }
  }

  final void b()
  {
    CallLogEntity localCallLogEntity = (CallLogEntity)this.a;
    localCallLogEntity.duration = (((Long)this.d[0]).longValue() - localCallLogEntity.date);
    bvp.b.j(this.g).cancelMissCall();
    bvp.b.a(this.g, this, bvp.b.d(this.g), true, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwa
 * JD-Core Version:    0.6.2
 */