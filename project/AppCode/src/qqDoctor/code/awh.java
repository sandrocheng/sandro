import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

final class awh
  implements DataHandler.DataHandlerCallback
{
  awh(awg paramawg)
  {
  }

  public final void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    if ((paramTelephonyEntity instanceof SmsEntity))
      awg.a(this.a).sendEmptyMessage(0);
    while (true)
    {
      return;
      if ((paramTelephonyEntity instanceof CallLogEntity))
        awg.a(this.a).sendEmptyMessage(1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awh
 * JD-Core Version:    0.6.2
 */