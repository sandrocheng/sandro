import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bfm
  implements View.OnClickListener
{
  bfm(bfg parambfg, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    nd.a().a(26388);
    bfg.g(this.b).V(false);
    bfg.g(this.b).U(false);
    Intent localIntent = new Intent(bfg.f(this.b), PickproofAccountLoginActivity.class);
    localIntent.putExtra("action", 1);
    ((Activity)bfg.f(this.b)).startActivity(localIntent);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfm
 * JD-Core Version:    0.6.2
 */