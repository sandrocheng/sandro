import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bku
  implements View.OnClickListener
{
  bku(bkn parambkn, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    bkn.z(this.b).h = true;
    bkn.A(this.b);
    this.b.onBackClick();
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bku
 * JD-Core Version:    0.6.2
 */