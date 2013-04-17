import android.os.Handler;
import java.util.TimerTask;

final class bkx extends TimerTask
{
  bkx(bkn parambkn)
  {
  }

  public final void run()
  {
    bkn.v(this.a).sendEmptyMessage(7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bkx
 * JD-Core Version:    0.6.2
 */