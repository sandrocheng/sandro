import android.os.Handler;
import java.util.List;

final class blo
  implements abu.a
{
  blo(blh paramblh)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    synchronized (blh.e(this.a))
    {
      blh.f(this.a).add((kw)parammp.h);
      blh.g(this.a).sendEmptyMessage(3);
      blh.h(this.a).sendEmptyMessage(4);
      blh.i(this.a);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blo
 * JD-Core Version:    0.6.2
 */