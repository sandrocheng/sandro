import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import java.util.List;

final class azf
  implements Handler.Callback
{
  azf(aze paramaze)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    aze.a(this.a).clear();
    this.a.getAdapter().setDataList(this.a.a());
    this.a.getAdapter().notifyDataSetChanged();
    this.a.setReloadData(true);
    aze.b(this.a);
    aze.c(this.a).sendEmptyMessage(-1);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azf
 * JD-Core Version:    0.6.2
 */