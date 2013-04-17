import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

final class ayk
  implements Handler.Callback
{
  ayk(ayj paramayj)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    ayj.a(this.a);
    ayj.b(this.a).sendEmptyMessage(-3);
    ayj.c(this.a).sendEmptyMessage(-1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayk
 * JD-Core Version:    0.6.2
 */