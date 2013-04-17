import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Telephony.MmsSms;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class bvn extends ContentObserver
{
  bvn(bvk.b paramb, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    SmsEntity localSmsEntity1 = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().getLastSentSms(10);
    if ((localSmsEntity1 == null) && (!((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().isDualSimDevice()));
    for (SmsEntity localSmsEntity2 = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().getLastSentMms(10); ; localSmsEntity2 = localSmsEntity1)
    {
      if (localSmsEntity2 != null)
      {
        ContentResolver localContentResolver = bvk.b.a(this.a).getContentResolver();
        localContentResolver.unregisterContentObserver(this);
        this.a.notifyDataReached(localSmsEntity2, new Object[0]);
        localContentResolver.registerContentObserver(Telephony.MmsSms.CONTENT_CONVERSATIONS_URI, true, this);
      }
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvn
 * JD-Core Version:    0.6.2
 */