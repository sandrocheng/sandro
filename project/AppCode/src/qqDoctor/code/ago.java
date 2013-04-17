import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;

public final class ago
  implements View.OnClickListener
{
  public ago(WeekRecDialog paramWeekRecDialog, kv paramkv)
  {
  }

  public final void onClick(View paramView)
  {
    WeekRecDialog.g(this.b).pauseTask(this.a);
    WeekRecDialog.h(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ago
 * JD-Core Version:    0.6.2
 */