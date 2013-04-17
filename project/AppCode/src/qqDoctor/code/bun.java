import android.telephony.PhoneNumberUtils;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;

final class bun extends Thread
{
  bun(bum parambum, String paramString)
  {
  }

  public final void run()
  {
    CallLogEntity localCallLogEntity = new CallLogEntity();
    if (this.b != null);
    for (String str = PhoneNumberUtils.stripSeparators(this.b); ; str = "")
    {
      localCallLogEntity.phonenum = str;
      localCallLogEntity.type = 1;
      localCallLogEntity.date = System.currentTimeMillis();
      bum.a(this.a).notifyDataReached(localCallLogEntity, new Object[0]);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bun
 * JD-Core Version:    0.6.2
 */