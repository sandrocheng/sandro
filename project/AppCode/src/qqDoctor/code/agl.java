import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;

public final class agl
  implements View.OnClickListener
{
  public agl(WeekRecDialog paramWeekRecDialog, kv paramkv)
  {
  }

  public final void onClick(View paramView)
  {
    nd.a().a(26283);
    if (!Environment.getExternalStorageState().equals("mounted"))
      ha.b(this.b, this.b.getString(2131429485));
    while (true)
    {
      return;
      WeekRecDialog.g(this.b).startTask(this.a);
      WeekRecDialog.h(this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agl
 * JD-Core Version:    0.6.2
 */