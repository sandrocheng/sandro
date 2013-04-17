import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotDlgActivity;

public final class agc
  implements View.OnClickListener
{
  public agc(ScreenShotDlgActivity paramScreenShotDlgActivity, Intent paramIntent)
  {
  }

  public final void onClick(View paramView)
  {
    ScreenShotDlgActivity.a = false;
    this.b.startActivity(this.a);
    this.b.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agc
 * JD-Core Version:    0.6.2
 */