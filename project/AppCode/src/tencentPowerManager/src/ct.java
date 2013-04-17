import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.powermanager.ui.QQPowerManagerActivity;
import com.tencent.powermanager.ui.SettingsActivity;

public final class ct
  implements View.OnClickListener
{
  public ct(QQPowerManagerActivity paramQQPowerManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(new Intent(this.a, SettingsActivity.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ct
 * JD-Core Version:    0.6.2
 */