import android.os.Handler;
import android.os.Message;
import java.util.List;

final class brj extends Handler
{
  brj(brf parambrf)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    brf.f(this.a).clear();
    this.a.f().setDataList(this.a.a());
    this.a.f().notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brj
 * JD-Core Version:    0.6.2
 */