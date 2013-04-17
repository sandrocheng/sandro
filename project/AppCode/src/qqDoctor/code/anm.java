import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class anm
  implements View.OnClickListener
{
  anm(anl paramanl)
  {
  }

  public final void onClick(View paramView)
  {
    avf localavf = (avf)this.a.getAdapter();
    int i = localavf.a();
    ((avg)anl.a(this.a).get(i)).b = 1;
    localavf.a(-1);
    anl.b(this.a);
    localavf.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anm
 * JD-Core Version:    0.6.2
 */