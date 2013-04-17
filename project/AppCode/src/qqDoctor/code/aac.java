import android.os.Handler.Callback;
import android.os.Message;
import com.tencent.qqpimsecure.service.ScreenEventReceiverEUP;
import com.tencent.tmsecure.utils.PhoneInfoUtil;

public final class aac
  implements Handler.Callback
{
  public aac(ScreenEventReceiverEUP paramScreenEventReceiverEUP)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return false;
      if (paramMessage.obj != null)
        ScreenEventReceiverEUP.a(this.a, ((Float)paramMessage.obj).floatValue());
      ScreenEventReceiverEUP.a(this.a);
      continue;
      if (paramMessage.obj != null)
        ScreenEventReceiverEUP.b(this.a, ((Float)paramMessage.obj).floatValue());
      ScreenEventReceiverEUP.b(this.a);
      continue;
      PhoneInfoUtil.getCPUscale(new aad(this));
      continue;
      PhoneInfoUtil.getCPUscale(new aae(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aac
 * JD-Core Version:    0.6.2
 */