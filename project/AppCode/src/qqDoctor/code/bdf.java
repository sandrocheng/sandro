import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class bdf
  implements View.OnClickListener
{
  bdf(bcz parambcz)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((akh)this.a.getAdapter()).a();
    kx localkx = (kx)bcz.h(this.a).get(i);
    bcz.a(localkx.e, bcz.i(this.a).f, 1);
    bcz.a(this.a, localkx);
    akh localakh = (akh)this.a.getAdapter();
    localakh.b(-1);
    localakh.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdf
 * JD-Core Version:    0.6.2
 */