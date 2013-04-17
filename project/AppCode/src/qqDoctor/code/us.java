import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

final class us
  implements DataHandler.DataHandlerCallback
{
  us(uo paramuo)
  {
  }

  public final void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    new Thread(new ut(this)).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     us
 * JD-Core Version:    0.6.2
 */