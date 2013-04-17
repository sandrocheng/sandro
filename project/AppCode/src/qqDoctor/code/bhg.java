import android.os.Handler;
import android.os.Message;

final class bhg extends Thread
{
  bhg(bhc parambhc, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    int i = bhc.c(this.c).a(this.a, this.b);
    if (i == 0)
    {
      Message localMessage2 = bhc.e(this.c).obtainMessage(100000);
      bhc.f(this.c).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = bhc.g(this.c).obtainMessage(100001, Integer.valueOf(i));
      bhc.h(this.c).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhg
 * JD-Core Version:    0.6.2
 */