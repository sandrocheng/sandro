import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil.SizeInfo;
import java.util.List;

final class ayw extends Handler
{
  ayw(ayp paramayp)
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
      ayp localayp7 = this.a;
      localayp7.c();
      continue;
      ayp localayp6 = this.a;
      localayp6.d();
      continue;
      ayp localayp5 = this.a;
      localayp5.e();
      continue;
      ayp localayp4 = this.a;
      localayp4.f();
      continue;
      ayp localayp3 = this.a;
      localayp3.g();
      continue;
      ayp localayp2 = this.a;
      localayp2.h();
      continue;
      this.a.a((kv)paramMessage.obj);
      PhoneInfoUtil.SizeInfo localSizeInfo = new PhoneInfoUtil.SizeInfo();
      PhoneInfoUtil.getStorageCardSize(localSizeInfo);
      if (localSizeInfo.a == 0L)
      {
        continue;
        ayp localayp1 = this.a;
        localayp1.i();
        continue;
        this.a.b((kv)paramMessage.obj);
        continue;
        this.a.a((List)paramMessage.obj);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayw
 * JD-Core Version:    0.6.2
 */