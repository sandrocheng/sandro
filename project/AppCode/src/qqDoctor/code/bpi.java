import android.os.Handler;
import android.os.Message;

final class bpi extends Thread
{
  bpi(bot parambot, int paramInt)
  {
  }

  public final void run()
  {
    cf.a locala;
    if (1001 == this.a)
    {
      locala = bot.k(this.b).e();
      bot.z(this.b);
      if (locala != cf.a.a)
        break label196;
      di.a();
      if ((1001 == this.a) || (1002 == this.a))
      {
        bot.B(this.b).l(System.currentTimeMillis());
        bot.a(this.b, null);
      }
      bot.C(this.b);
      Message localMessage2 = bot.x(this.b).obtainMessage(2004, Integer.valueOf(this.a));
      bot.x(this.b).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      if (1002 == this.a)
      {
        locala = bot.k(this.b).d();
        break;
      }
      if (1003 == this.a)
      {
        locala = bot.k(this.b).c();
        break;
      }
      locala = bot.k(this.b).b();
      break;
      label196: Message localMessage1 = bot.x(this.b).obtainMessage(2005, locala);
      bot.x(this.b).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpi
 * JD-Core Version:    0.6.2
 */