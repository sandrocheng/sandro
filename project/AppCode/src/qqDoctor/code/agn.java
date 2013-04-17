import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;

public final class agn
  implements View.OnClickListener
{
  public agn(WeekRecDialog paramWeekRecDialog, kv paramkv)
  {
  }

  public final void onClick(View paramView)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      ha.b(this.b, this.b.getString(2131429485));
      return;
    }
    if (this.a.mState == 3)
      WeekRecDialog.a(this.b, this.a);
    while (true)
    {
      WeekRecDialog.h(this.b);
      break;
      WeekRecDialog.g(this.b).startTask(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agn
 * JD-Core Version:    0.6.2
 */