import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.SDcardNotEnoughDialog;
import com.tencent.qqpimsecure.ui.activity.software.ApkManagerActivity;

public final class agg
  implements View.OnClickListener
{
  public agg(SDcardNotEnoughDialog paramSDcardNotEnoughDialog)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(SDcardNotEnoughDialog.a(this.a), ApkManagerActivity.class);
    SDcardNotEnoughDialog.a(this.a).startActivity(localIntent);
    ((Activity)SDcardNotEnoughDialog.a(this.a)).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agg
 * JD-Core Version:    0.6.2
 */