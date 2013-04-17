import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;

final class pz extends Handler
{
  pz(px parampx)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 3:
    case 2:
    case 4:
    }
    while (true)
    {
      return;
      synchronized (px.g(this.a))
      {
        if (!px.g(this.a).isEmpty());
      }
      String str = (String)paramMessage.obj;
      px.h(this.a).add(str);
      px.g(this.a).remove(0);
      qa localqa = new qa(this, str);
      px.k(this.a).post(localqa);
      continue;
      px.l(this.a);
      new StringBuilder("CameraMonitorService end encrypFile FAIL: ").append((String)paramMessage.obj).toString();
      continue;
      synchronized (px.g(this.a))
      {
        if (!px.g(this.a).isEmpty());
      }
      mc localmc1 = (mc)px.g(this.a).get(0);
      if (((Integer)localmc1.b).intValue() <= 2)
      {
        px.a(this.a, localmc1);
      }
      else
      {
        px.l(this.a);
        new StringBuilder("FINISH: remove item ").append((String)localmc1.a).append(" after trying 2 times").toString();
        px.g(this.a).remove(0);
        if (px.g(this.a).isEmpty());
        mc localmc2 = (mc)px.g(this.a).get(0);
        px.a(this.a, localmc2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pz
 * JD-Core Version:    0.6.2
 */