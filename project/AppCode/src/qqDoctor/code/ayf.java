import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import java.util.List;

final class ayf
  implements Handler.Callback
{
  ayf(aye paramaye)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    aye.a(this.a).clear();
    this.a.getAdapter().setDataList(aye.b(this.a));
    this.a.getAdapter().notifyDataSetChanged();
    aye.c(this.a);
    aye.a(this.a, true);
    aye.d(this.a).sendEmptyMessage(3);
    aye.e(this.a).sendEmptyMessage(4);
    aye.f(this.a).sendEmptyMessage(-1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayf
 * JD-Core Version:    0.6.2
 */