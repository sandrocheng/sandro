import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.view.permission.MonitorLogListView;

public final class bcn
  implements View.OnClickListener
{
  public bcn(MonitorLogListView paramMonitorLogListView)
  {
  }

  public final void onClick(View paramView)
  {
    MonitorLogListView.a(this.a).dismiss();
    this.a.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcn
 * JD-Core Version:    0.6.2
 */