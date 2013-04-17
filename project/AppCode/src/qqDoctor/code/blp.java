import android.os.Handler;
import java.util.ArrayList;

final class blp extends Thread
{
  blp(blh paramblh)
  {
  }

  public final void run()
  {
    ArrayList localArrayList = new ArrayList(blh.j(this.a));
    synchronized (blh.k(this.a))
    {
      blh.a(this.a, blh.c(this.a).a(localArrayList));
      blh.l(this.a).sendEmptyMessage(1);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blp
 * JD-Core Version:    0.6.2
 */