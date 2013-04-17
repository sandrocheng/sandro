import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.ContactSelectActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bfl
  implements View.OnClickListener
{
  bfl(bfg parambfg, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bfg.f(this.b), ContactSelectActivity.class);
    localIntent.putExtra("from", 5);
    localIntent.putExtra("type", 3);
    localIntent.putExtra("title", 2131429461);
    ((Activity)bfg.f(this.b)).startActivityForResult(localIntent, 5);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfl
 * JD-Core Version:    0.6.2
 */