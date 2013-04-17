import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class apj
  implements View.OnClickListener
{
  apj(apf paramapf, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    apf.a(this.b).S(false);
    Context localContext = apf.n(this.b);
    if (ok.a == null)
      ok.a = new ok(localContext);
    ok localok = ok.a;
    if (localok.g)
    {
      abv.a().b(localok.k);
      localok.g = false;
      localok.f = null;
      if (localok.d != null)
      {
        localok.d.a();
        localok.d = null;
      }
      localok.e = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apj
 * JD-Core Version:    0.6.2
 */