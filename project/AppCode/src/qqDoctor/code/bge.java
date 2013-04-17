import android.os.Handler;
import android.os.Message;

final class bge extends Thread
{
  bge(bfy parambfy, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    int i = bfy.d(this.c).a(this.a, this.b);
    if (i == 0)
    {
      Message localMessage2 = bfy.f(this.c).obtainMessage(100000);
      bfy.g(this.c).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = bfy.h(this.c).obtainMessage(100001, Integer.valueOf(i));
      bfy.i(this.c).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bge
 * JD-Core Version:    0.6.2
 */