import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;

final class bph extends Thread
{
  bph(bot parambot, int paramInt)
  {
  }

  public final void run()
  {
    int i = 0;
    if (bot.A(this.b));
    while (true)
    {
      try
      {
        Message localMessage = bot.x(this.b).obtainMessage(2001, Integer.valueOf(this.a));
        bot.x(this.b).sendMessage(localMessage);
        Thread.sleep(1000L);
        if (i != 0)
          break label82;
        ((ProgressDialog)bot.j(this.b)).startProgressAnimation();
        j = 1;
        i = j;
        break;
        return;
      }
      catch (Exception localException)
      {
      }
      break;
      label82: int j = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bph
 * JD-Core Version:    0.6.2
 */