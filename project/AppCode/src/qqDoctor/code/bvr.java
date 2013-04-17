import android.database.ContentObserver;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;

final class bvr extends ContentObserver
{
  bvr(bvp.a parama, Handler paramHandler1, Handler paramHandler2)
  {
    super(paramHandler1);
  }

  public final void onChange(boolean paramBoolean)
  {
    try
    {
      super.onChange(paramBoolean);
      CallLogEntity localCallLogEntity = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().getLastCallLog();
      if (localCallLogEntity != null)
        this.b.postDelayed(new bvs(this, localCallLogEntity), 2000L);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvr
 * JD-Core Version:    0.6.2
 */