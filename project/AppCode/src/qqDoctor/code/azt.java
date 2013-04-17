import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetworkManager;

final class azt
  implements View.OnClickListener
{
  azt(azj paramazj, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    azj.n(this.b).clearAllLogs();
    azj.o(this.b).clearAllLogs();
    azj.k(this.b).notifyConfigChange();
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azt
 * JD-Core Version:    0.6.2
 */