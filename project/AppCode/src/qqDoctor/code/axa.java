import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import java.util.List;

final class axa
  implements Handler.Callback
{
  axa(awz paramawz)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    awz.a(this.a).clear();
    this.a.getAdapter().setDataList(awz.b(this.a));
    this.a.getAdapter().notifyDataSetChanged();
    awz.c(this.a);
    awz.a(this.a, true);
    awz.d(this.a).sendEmptyMessage(3);
    awz.e(this.a).sendEmptyMessage(4);
    awz.f(this.a).sendEmptyMessage(-1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axa
 * JD-Core Version:    0.6.2
 */