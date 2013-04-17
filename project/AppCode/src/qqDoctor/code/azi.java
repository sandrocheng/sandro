import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import java.util.List;

final class azi extends Handler
{
  azi(aze paramaze)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    aze.h(this.a).clear();
    this.a.getAdapter().setDataList(this.a.a());
    this.a.getAdapter().notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azi
 * JD-Core Version:    0.6.2
 */