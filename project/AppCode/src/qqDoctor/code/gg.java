import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class gg
  implements View.OnClickListener
{
  public gg(Activity paramActivity, kw paramkw, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(this.a.getString(2131429170));
    localDialog.setMessage(this.a.getString(2131429193));
    localDialog.setPositiveButton(2131428152, new gh(this, localDialog), 2);
    localDialog.show();
    this.c.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gg
 * JD-Core Version:    0.6.2
 */