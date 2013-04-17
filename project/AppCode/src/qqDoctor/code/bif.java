import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class bif
  implements View.OnClickListener
{
  bif(bhz parambhz)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)bhz.n(this.a).getTag()).intValue();
    kz localkz = (kz)bhz.o(this.a).get(i);
    bhz.e(this.a).a(localkz.b(), bhz.d(this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bif
 * JD-Core Version:    0.6.2
 */