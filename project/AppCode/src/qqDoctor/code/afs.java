import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.b;
import com.tencent.tmsecure.utils.WifiUtil;

public final class afs
  implements View.OnClickListener
{
  public afs(WifiApproveDialog.b paramb)
  {
  }

  public final void onClick(View paramView)
  {
    WifiUtil.needWifiApprove(new aft(this, paramView.getId()));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afs
 * JD-Core Version:    0.6.2
 */