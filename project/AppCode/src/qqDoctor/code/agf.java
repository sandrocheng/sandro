import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.SDcardNotEnoughDialog;

public final class agf
  implements View.OnClickListener
{
  public agf(SDcardNotEnoughDialog paramSDcardNotEnoughDialog)
  {
  }

  public final void onClick(View paramView)
  {
    ((Activity)SDcardNotEnoughDialog.a(this.a)).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agf
 * JD-Core Version:    0.6.2
 */