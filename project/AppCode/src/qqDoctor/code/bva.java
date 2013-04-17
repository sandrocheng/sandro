import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker.CheckResult;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.IntelligentSmsHandler;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;

final class bva extends buh.a
{
  bva(buo.b paramb)
  {
  }

  public final boolean a()
  {
    SmsEntity localSmsEntity = (SmsEntity)this.a;
    IIntelligentSmsChecker.CheckResult localCheckResult = buo.b.k(this.g).check(localSmsEntity);
    if ((this.b == 2) && (localCheckResult.mSuggestion != 4));
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
        this.f = localCheckResult;
      return bool;
    }
  }

  public final void b()
  {
    FilterResult localFilterResult = new FilterResult();
    SmsEntity localSmsEntity = (SmsEntity)this.a;
    IIntelligentSmsChecker.CheckResult localCheckResult = (IIntelligentSmsChecker.CheckResult)this.f;
    localFilterResult.mData = this.a;
    localFilterResult.mFilterfiled = this.e;
    localFilterResult.mState = this.b;
    boolean bool1;
    if (IIntelligentSmsChecker.CheckResult.shouldBeBlockedOrNot(localCheckResult))
      bool1 = true;
    while (true)
    {
      if (buo.b.l(this.g) != null);
      for (boolean bool2 = buo.b.l(this.g).handleCheckResult(localSmsEntity, localCheckResult, bool1); ; bool2 = bool1)
      {
        if (bool2)
        {
          localFilterResult.isBlocked = true;
          buo.b.b(this.g).blockSms(this.d);
          localFilterResult.mDotos.add(buo.b.a(this.g, (SmsEntity)this.a, buo.b.c(this.g), localFilterResult));
          if (localSmsEntity.protocolType == 1)
            localFilterResult.mDotos.add(buo.b.a(this.g, localSmsEntity));
        }
        while (true)
        {
          Object[] arrayOfObject = new Object[3];
          arrayOfObject[0] = buo.b.a(this.d);
          arrayOfObject[1] = localCheckResult;
          arrayOfObject[2] = Boolean.valueOf(bool2);
          localFilterResult.mParams = arrayOfObject;
          this.c = localFilterResult;
          return;
          if (localCheckResult.mSuggestion != 1)
            break label255;
          bool1 = false;
          break;
          buo.b.b(this.g).unBlockSms(localSmsEntity, this.d);
        }
      }
      label255: bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bva
 * JD-Core Version:    0.6.2
 */