import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.ISpecialSmsChecker;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;

final class buq extends buh.a
{
  buq(buo.b paramb)
  {
  }

  final boolean a()
  {
    if ((this.b == 2) && (buo.b.a(this.g) != null));
    for (boolean bool = buo.b.a(this.g).isMatch((SmsEntity)this.a); ; bool = false)
      return bool;
  }

  final void b()
  {
    SmsEntity localSmsEntity = (SmsEntity)this.a;
    FilterResult localFilterResult = new FilterResult();
    localFilterResult.mData = this.a;
    localFilterResult.mFilterfiled = this.e;
    localFilterResult.mState = this.b;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = buo.b.a(this.d);
    arrayOfObject[1] = Boolean.valueOf(buo.b.a(this.g).isBlocked(localSmsEntity));
    localFilterResult.mParams = arrayOfObject;
    if (((Boolean)localFilterResult.mParams[1]).booleanValue())
    {
      localFilterResult.isBlocked = true;
      buo.b.b(this.g).blockSms(this.d);
      localFilterResult.mDotos.add(buo.b.a(this.g, localSmsEntity, buo.b.c(this.g), localFilterResult));
      if (localSmsEntity.protocolType == 1)
        localFilterResult.mDotos.add(buo.b.a(this.g, localSmsEntity));
    }
    while (true)
    {
      this.c = localFilterResult;
      return;
      buo.b.b(this.g).unBlockSms(localSmsEntity, this.d);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     buq
 * JD-Core Version:    0.6.2
 */