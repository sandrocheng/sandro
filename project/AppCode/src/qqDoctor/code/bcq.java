import android.os.Handler;
import com.tencent.qqpimsecure.view.permission.MonitorLogListView;

public final class bcq
  implements Runnable
{
  public bcq(MonitorLogListView paramMonitorLogListView)
  {
  }

  public final void run()
  {
    this.a.loadDataList();
    MonitorLogListView.d(this.a).sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcq
 * JD-Core Version:    0.6.2
 */