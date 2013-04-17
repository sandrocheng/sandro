import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bru
  implements View.OnClickListener
{
  bru(brp parambrp, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    if (brp.R(this.b).e())
    {
      brp.R(this.b).c();
      brp.S(this.b).setEnabled(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bru
 * JD-Core Version:    0.6.2
 */