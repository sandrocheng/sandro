import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.IMmsTransactionHelper;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class bus extends Thread
{
  bus(SmsEntity paramSmsEntity)
  {
  }

  public final void run()
  {
    ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getMmsTransactionHelper().sendNotifyRespInd(131, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bus
 * JD-Core Version:    0.6.2
 */