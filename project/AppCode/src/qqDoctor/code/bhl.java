import android.os.Handler;
import android.os.Message;

final class bhl extends Thread
{
  bhl(bhc parambhc, String paramString)
  {
  }

  public final void run()
  {
    int i = bhc.c(this.b).a(this.a, false);
    if (i == 0)
    {
      Message localMessage2 = bhc.l(this.b).obtainMessage(100000);
      bhc.m(this.b).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = bhc.n(this.b).obtainMessage(100001, Integer.valueOf(i));
      bhc.o(this.b).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhl
 * JD-Core Version:    0.6.2
 */