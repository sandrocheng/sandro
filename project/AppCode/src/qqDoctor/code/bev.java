import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bev
  implements View.OnClickListener
{
  bev(bet parambet, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    Intent localIntent = new Intent();
    localIntent.setClass(bet.h(this.b), PickproofActivity.class);
    bet.i(this.b).startActivity(localIntent);
    ((Activity)bet.j(this.b)).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bev
 * JD-Core Version:    0.6.2
 */