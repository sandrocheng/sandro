import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.ScreenEventReceiverEUP;
import com.tencent.tmsecure.utils.PhoneInfoUtil.CPUScaleListener;

final class aad
  implements PhoneInfoUtil.CPUScaleListener
{
  aad(aac paramaac)
  {
  }

  public final void onFinish(float paramFloat)
  {
    Message localMessage = ScreenEventReceiverEUP.c(this.a.a).obtainMessage(1);
    localMessage.obj = Float.valueOf(paramFloat);
    ScreenEventReceiverEUP.c(this.a.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aad
 * JD-Core Version:    0.6.2
 */