import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class bcl
  implements View.OnClickListener
{
  bcl(bce parambce)
  {
  }

  public final void onClick(View paramView)
  {
    aii localaii = (aii)this.a.getAdapter();
    int i = localaii.a();
    mb.a locala = (mb.a)bce.p(this.a).get(i);
    mb localmb = bce.h(this.a).a(locala.i.a);
    if (localmb != null)
    {
      nd.a().a(26292);
      localmb.c = 1;
      bce.h(this.a).b(localmb);
      bce.h(this.a);
      ja.c(localmb);
    }
    localaii.b(0);
    bce.q(this.a).sendEmptyMessage(-1);
    localaii.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcl
 * JD-Core Version:    0.6.2
 */