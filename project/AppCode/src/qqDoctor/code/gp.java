import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class gp
  implements View.OnClickListener
{
  gp(ge paramge, kw paramkw, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.c.b != null)
    {
      ge.a locala = this.c.b;
      kw localkw = this.a;
      locala.a.b(localkw);
    }
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gp
 * JD-Core Version:    0.6.2
 */