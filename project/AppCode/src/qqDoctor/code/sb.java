import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class sb
  implements View.OnClickListener
{
  public sb(rx paramrx, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    this.b.b.a(true);
    hh.a().a(true);
    ov.a().a(false, true, true);
    Intent localIntent = new Intent();
    localIntent.setAction("com.tencent.qqpimsecure.function_info_refresh");
    this.b.a.sendBroadcast(localIntent);
    ha.a(this.b.a, this.b.a.getResources().getString(2131428455));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sb
 * JD-Core Version:    0.6.2
 */