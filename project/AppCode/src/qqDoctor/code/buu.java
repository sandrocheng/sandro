import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;

final class buu extends buh.a
{
  buu(buo.b paramb)
  {
  }

  public final boolean a()
  {
    SmsEntity localSmsEntity = (SmsEntity)this.a;
    if ((this.b == 2) && (localSmsEntity.protocolType != 2) && (buo.b.d(this.g).contains(localSmsEntity.phonenum, 1)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void b()
  {
    SmsEntity localSmsEntity = (SmsEntity)this.a;
    FilterResult localFilterResult = new FilterResult();
    localFilterResult.mData = this.a;
    localFilterResult.mFilterfiled = this.e;
    localFilterResult.mState = this.b;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = buo.b.a(this.d);
    localFilterResult.mParams = arrayOfObject;
    if ((localSmsEntity.protocolType == 0) || (!((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().isDualSimDevice()))
    {
      localFilterResult.isBlocked = true;
      buo.b.b(this.g).blockSms(this.d);
      localFilterResult.mDotos.add(buo.b.a(this.g, localSmsEntity, buo.b.e(this.g), localFilterResult));
      if (localSmsEntity.protocolType == 1)
        localFilterResult.mDotos.add(buo.b.a(this.g, localSmsEntity));
    }
    while (true)
    {
      this.c = localFilterResult;
      return;
      localFilterResult.isBlocked = false;
      buo.b.b(this.g).unBlockSms(localSmsEntity, this.d);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     buu
 * JD-Core Version:    0.6.2
 */