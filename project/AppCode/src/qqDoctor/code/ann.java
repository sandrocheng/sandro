import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class ann
  implements View.OnClickListener
{
  ann(anl paramanl)
  {
  }

  public final void onClick(View paramView)
  {
    avf localavf = (avf)this.a.getAdapter();
    int i = localavf.a();
    ((avg)anl.c(this.a).get(i)).b = 0;
    localavf.a(-1);
    anl.b(this.a);
    localavf.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ann
 * JD-Core Version:    0.6.2
 */