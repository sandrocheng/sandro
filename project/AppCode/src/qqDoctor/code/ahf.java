import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class ahf
  implements View.OnClickListener
{
  public ahf(PickproofAccountLoginActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    if (PickproofAccountLoginActivity.a.i(this.a) != null)
      PickproofAccountLoginActivity.a.i(this.a).e = true;
    if (PickproofAccountLoginActivity.a.j(this.a) != null)
      PickproofAccountLoginActivity.a.j(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahf
 * JD-Core Version:    0.6.2
 */