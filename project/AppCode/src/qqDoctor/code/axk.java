import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.List;

final class axk
  implements Handler.Callback
{
  axk(axj paramaxj)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    axj.a(this.a).clear();
    axj.b(this.a).clear();
    this.a.f().setDataList(this.a.a());
    this.a.f().notifyDataSetChanged();
    this.a.setReloadData(true);
    axj.c(this.a);
    axj.d(this.a).sendEmptyMessage(-1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axk
 * JD-Core Version:    0.6.2
 */