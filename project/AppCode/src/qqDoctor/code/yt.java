import android.content.Context;
import com.tencent.qqpimsecure.service.ScreenEventReceiver;

public final class yt
  implements Runnable
{
  public yt(yr paramyr)
  {
  }

  public final void run()
  {
    qr localqr = qr.a(this.a.a);
    int i = localqr.b();
    ho localho = ho.a();
    boolean bool;
    if (i == 0)
    {
      bool = true;
      localho.s(bool);
      if (i == 0)
      {
        localho.h(System.currentTimeMillis());
        if ((localho.dq()) && (a.g(this.a.a) == fl.a) && (localqr.a(localqr.c())))
        {
          long l1 = localho.aM();
          long l2 = System.currentTimeMillis();
          if (Math.abs(l2 - l1) > 259200000L)
          {
            if (!ScreenEventReceiver.a())
              break label146;
            localho.R(false);
            localho.i(l2);
            ov.a().a(this.a.a.getString(2131428316));
          }
        }
      }
    }
    while (true)
    {
      return;
      bool = false;
      break;
      label146: localho.R(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yt
 * JD-Core Version:    0.6.2
 */