import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil.SizeInfo;
import java.util.List;

final class bme extends Handler
{
  bme(bmd parambmd)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 8:
    case 2:
    case 4:
    case 3:
    case 5:
    case 6:
    case 9:
    case 7:
    case 10:
    }
    while (true)
    {
      return;
      this.a.b((kv)paramMessage.obj);
      continue;
      this.a.a((List)paramMessage.obj);
      continue;
      this.a.c((kv)paramMessage.obj);
      continue;
      this.a.d((kv)paramMessage.obj);
      continue;
      bmd localbmd = this.a;
      localbmd.i();
      continue;
      this.a.f((kv)paramMessage.obj);
      continue;
      this.a.g((kv)paramMessage.obj);
      PhoneInfoUtil.SizeInfo localSizeInfo = new PhoneInfoUtil.SizeInfo();
      PhoneInfoUtil.getStorageCardSize(localSizeInfo);
      if (localSizeInfo.a == 0L)
      {
        continue;
        this.a.d((List)paramMessage.obj);
        continue;
        this.a.e((kv)paramMessage.obj);
        continue;
        this.a.e((List)paramMessage.obj);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bme
 * JD-Core Version:    0.6.2
 */