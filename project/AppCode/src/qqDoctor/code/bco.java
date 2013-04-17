import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.view.permission.MonitorLogListView;

public final class bco
  implements View.OnClickListener
{
  public bco(MonitorLogListView paramMonitorLogListView)
  {
  }

  public final void onClick(View paramView)
  {
    MonitorLogListView.a(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bco
 * JD-Core Version:    0.6.2
 */