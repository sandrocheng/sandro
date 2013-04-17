import android.os.Handler;
import java.util.List;

final class bqy
  implements Runnable
{
  bqy(bqv parambqv)
  {
  }

  public final void run()
  {
    zk.a locala = new zk(bqv.i(this.a), null).a(false);
    bqv localbqv = this.a;
    bqv.a(localbqv, locala.c);
    if (!locala.d);
    try
    {
      bqv.e(this.a).removeAll(locala.a);
      bqv.d(this.a).removeAll(locala.a);
      bqv.g(this.a).clear();
      bqv.j(this.a).clear();
      bqv.k(this.a).addAll(bqv.d(this.a));
      bqv.l(this.a).addAll(bqv.e(this.a));
      this.a.a.sendEmptyMessage(0);
      bqv.m(this.a).sendEmptyMessage(-2);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqy
 * JD-Core Version:    0.6.2
 */