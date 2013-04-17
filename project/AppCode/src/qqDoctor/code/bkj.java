import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

final class bkj
  implements DataHandler.DataHandlerCallback
{
  bkj(bki parambki)
  {
  }

  public final void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    if (((paramTelephonyEntity instanceof SmsEntity)) && ((paramInt1 == 1) || (paramInt1 == 1)))
      bki.a(this.a).sendEmptyMessage(0);
    while (true)
    {
      return;
      if (((paramTelephonyEntity instanceof CallLogEntity)) && (paramInt1 == 1))
        bki.a(this.a).sendEmptyMessage(1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bkj
 * JD-Core Version:    0.6.2
 */