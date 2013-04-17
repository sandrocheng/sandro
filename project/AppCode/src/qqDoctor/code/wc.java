import android.content.Context;
import com.tencent.qqpimsecure.service.ScreenEventReceiver;

public final class wc extends Thread
{
  public wc(Context paramContext, ho paramho, long paramLong)
  {
  }

  public final void run()
  {
    try
    {
      acg localacg = new acg(this.a, false, true);
      localacg.e();
      if (localacg.b() == 0)
      {
        long l = this.b.aM();
        if (Math.abs(this.c - l) > 259200000L)
          if (ScreenEventReceiver.a())
          {
            this.b.R(false);
            this.b.i(this.c);
            ov.a().a(this.a.getString(2131428316));
          }
          else
          {
            this.b.R(true);
          }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wc
 * JD-Core Version:    0.6.2
 */