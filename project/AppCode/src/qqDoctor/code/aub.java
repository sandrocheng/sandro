import android.os.Handler;
import android.os.Message;

final class aub extends Thread
{
  aub(atz paramatz, int paramInt)
  {
  }

  public final void run()
  {
    cf.a locala = cf.a.d;
    nd localnd = nd.a();
    if (1005 == this.a)
    {
      locala = atz.s(this.b).e();
      localnd.a(26096);
    }
    label175: 
    while (true)
    {
      atz.v(this.b);
      if (locala == cf.a.a)
      {
        if (this.a == 1005)
          atz.p(this.b).b(System.currentTimeMillis());
        Message localMessage2 = atz.A(this.b).obtainMessage(3002, Integer.valueOf(this.a));
        atz.B(this.b).sendMessage(localMessage2);
      }
      while (true)
      {
        return;
        if (1006 != this.a)
          break label175;
        locala = atz.s(this.b).b();
        localnd.a(26097);
        break;
        Message localMessage1 = atz.C(this.b).obtainMessage(3003, locala);
        atz.D(this.b).sendMessage(localMessage1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aub
 * JD-Core Version:    0.6.2
 */