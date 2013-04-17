import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class awe
  implements View.OnClickListener
{
  awe(avu paramavu)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)avu.v(this.a).getTag()).intValue();
    mk localmk = (mk)avu.w(this.a).get(i);
    this.a.a(localmk);
    ((aiw)this.a.getAdapter()).a();
    ((aiw)this.a.getAdapter()).notifyDataSetChanged();
    nd.a().a(26315);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awe
 * JD-Core Version:    0.6.2
 */