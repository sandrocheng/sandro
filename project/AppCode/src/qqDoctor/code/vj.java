import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;

final class vj extends Handler
{
  vj(vh paramvh)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      long l = vh.c(this.a).getFreeMemery();
      if (vh.d(this.a) < l)
        vh.a(this.a, l);
      vh.e(this.a);
      if (vh.f(this.a) < 5)
      {
        this.a.a.sendEmptyMessageDelayed(1, 200L);
      }
      else
      {
        vh.b(this.a, vh.d(this.a));
        this.a.a(0L);
        if (vh.g(this.a) != null)
          vh.g(this.a).onMemoryGot();
        nd.a().f();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vj
 * JD-Core Version:    0.6.2
 */