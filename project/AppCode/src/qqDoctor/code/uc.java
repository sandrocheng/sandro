import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class uc
  implements View.OnClickListener
{
  uc(sy paramsy, String paramString1, String paramString2, int paramInt, vk.a parama, dv paramdv, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    lf locallf = new lf(this.d, this.a, this.e);
    locallf.a = this.f;
    if ((this.e == 1) && (locallf.phonenum.indexOf('*') < 0));
    for (this.c.f.g = new ud(this); ; this.c.f.g = this.b)
    {
      this.c.f.a(locallf, this.e);
      this.g.dismiss();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     uc
 * JD-Core Version:    0.6.2
 */