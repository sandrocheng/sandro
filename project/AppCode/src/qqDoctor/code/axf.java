import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

final class axf
  implements Handler.Callback
{
  axf(axe paramaxe)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    axe.a(this.a);
    axe.b(this.a).sendEmptyMessage(-3);
    axe.c(this.a).sendEmptyMessage(-1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axf
 * JD-Core Version:    0.6.2
 */