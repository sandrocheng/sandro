import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import java.util.ArrayList;

final class aic
  implements View.OnClickListener
{
  aic(aib paramaib)
  {
  }

  public final void onClick(View paramView)
  {
    String str = (String)paramView.getTag();
    this.a.a.remove(str);
    this.a.b.add(str);
    aib.a(this.a).b();
    this.a.notifyDataSetChanged();
    if (this.a.a.size() == 0)
      aib.b(this.a).setVisibility(8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aic
 * JD-Core Version:    0.6.2
 */