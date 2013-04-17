import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class aoz
  implements View.OnClickListener
{
  aoz(aou paramaou)
  {
  }

  public final void onClick(View paramView)
  {
    if (!aou.C(this.a))
    {
      aou.c(this.a).a = 0L;
      if (aou.b(this.a, aou.c(this.a)));
    }
    while (true)
    {
      return;
      aou.a(this.a, true);
      if (aou.D(this.a) == null)
      {
        aou.E(this.a);
        aou.F(this.a);
        aou.a(this.a, new Dialog(aou.G(this.a)));
        aou.b(this.a).addProgressDialog();
        aou.b(this.a).setTitle(2131430077);
        aou.b(this.a).setMessage(2131430078);
        aou.b(this.a).setNeutralButton(2131427379, new apa(this), 2);
        aou.b(this.a).show();
        aou.a(this.a, new Thread(aou.H(this.a), "MicroBlogShareThread"));
        aou.D(this.a).start();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aoz
 * JD-Core Version:    0.6.2
 */