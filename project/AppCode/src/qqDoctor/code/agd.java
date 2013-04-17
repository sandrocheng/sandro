import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotDlgActivity;

public final class agd
  implements View.OnClickListener
{
  public agd(ScreenShotDlgActivity paramScreenShotDlgActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ScreenShotDlgActivity.a = false;
    this.a.finish();
    Toast.makeText(this.a, this.a.getString(2131429513), 1).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agd
 * JD-Core Version:    0.6.2
 */