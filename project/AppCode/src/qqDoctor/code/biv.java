import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class biv
  implements View.OnClickListener
{
  biv(bip parambip, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    bip.e(this.b).c();
    bip.f(this.b).sendEmptyMessage(-1);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     biv
 * JD-Core Version:    0.6.2
 */