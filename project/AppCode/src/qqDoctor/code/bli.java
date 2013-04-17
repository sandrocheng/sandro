import android.os.Handler;
import java.util.Iterator;
import java.util.List;

final class bli
  implements Runnable
{
  bli(blh paramblh)
  {
  }

  public final void run()
  {
    synchronized (blh.a(this.a))
    {
      Iterator localIterator = blh.b(this.a).iterator();
      if (localIterator.hasNext())
      {
        kw localkw = (kw)localIterator.next();
        blh.c(this.a).b(localkw);
      }
    }
    blh.d(this.a).sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bli
 * JD-Core Version:    0.6.2
 */