import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class bdg
  implements View.OnClickListener
{
  bdg(bcz parambcz)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((akh)this.a.getAdapter()).a();
    kx localkx = (kx)bcz.j(this.a).get(i);
    bcz.a(localkx.e, bcz.i(this.a).f, 0);
    bcz.a(this.a, localkx);
    akh localakh = (akh)this.a.getAdapter();
    localakh.b(-1);
    localakh.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdg
 * JD-Core Version:    0.6.2
 */