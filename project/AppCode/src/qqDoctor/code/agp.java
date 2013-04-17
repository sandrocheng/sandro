import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;

public final class agp
  implements View.OnClickListener
{
  public agp(WeekRecDialog paramWeekRecDialog, kv paramkv)
  {
  }

  public final void onClick(View paramView)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
      ha.b(this.b, this.b.getString(2131429485));
    while (true)
    {
      return;
      WeekRecDialog.g(this.b).continueTask(this.a);
      WeekRecDialog.h(this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agp
 * JD-Core Version:    0.6.2
 */