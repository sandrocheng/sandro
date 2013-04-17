import android.os.Handler;
import android.os.Message;
import java.util.Iterator;
import java.util.List;

final class anb
  implements Runnable
{
  anb(ams paramams, List paramList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      mk localmk = (mk)localIterator.next();
      ams.a(this.b, localmk);
    }
    ams.w(this.b).c(0);
    Message localMessage = ams.y(this.b).obtainMessage(33);
    ams.y(this.b).sendMessage(localMessage);
    ams.A(this.b).sendEmptyMessage(-1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anb
 * JD-Core Version:    0.6.2
 */