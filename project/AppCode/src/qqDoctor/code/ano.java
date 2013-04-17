import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class ano
  implements View.OnClickListener
{
  ano(anl paramanl)
  {
  }

  public final void onClick(View paramView)
  {
    avf localavf = (avf)this.a.getAdapter();
    int i = localavf.a();
    ((avg)anl.d(this.a).get(i)).b = 2;
    localavf.a(-1);
    anl.b(this.a);
    localavf.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ano
 * JD-Core Version:    0.6.2
 */