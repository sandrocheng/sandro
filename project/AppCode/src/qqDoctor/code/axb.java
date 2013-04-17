import android.os.Handler;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView.OnRefreshListener;

final class axb
  implements PinnedHeaderListView.OnRefreshListener
{
  axb(awz paramawz)
  {
  }

  public final void onRefresh()
  {
    awz.g(this.a).sendEmptyMessage(100);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axb
 * JD-Core Version:    0.6.2
 */