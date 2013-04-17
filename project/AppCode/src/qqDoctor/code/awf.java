import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class awf
  implements View.OnClickListener
{
  awf(avu paramavu)
  {
  }

  public final void onClick(View paramView)
  {
    avu.x(this.a);
    int i = ((Integer)avu.y(this.a).getTag()).intValue();
    if (TextUtils.isEmpty(((mk)avu.z(this.a).get(i)).a()))
    {
      avu.k(this.a).a(26319);
      this.a.a(i);
    }
    while (true)
    {
      return;
      avu.A(this.a).showContextMenu();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awf
 * JD-Core Version:    0.6.2
 */