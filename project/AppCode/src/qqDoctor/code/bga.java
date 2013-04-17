import android.os.Handler;
import android.os.Message;

final class bga extends Thread
{
  bga(bfy parambfy, String paramString)
  {
  }

  public final void run()
  {
    int i = bfy.d(this.b).a(this.a, false);
    if (i == 0)
    {
      Message localMessage2 = bfy.m(this.b).obtainMessage(100000);
      bfy.n(this.b).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = bfy.o(this.b).obtainMessage(100001, Integer.valueOf(i));
      bfy.p(this.b).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bga
 * JD-Core Version:    0.6.2
 */