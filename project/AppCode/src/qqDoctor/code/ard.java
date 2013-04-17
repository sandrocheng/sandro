import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import com.tencent.tmsecure.module.phoneservice.UsefulNumberEntity;
import java.util.ArrayList;
import java.util.HashMap;

final class ard
  implements ExpandableListView.OnChildClickListener
{
  ard(arb paramarb)
  {
  }

  public final boolean onChildClick(ExpandableListView paramExpandableListView, View paramView, int paramInt1, int paramInt2, long paramLong)
  {
    ft.a(((UsefulNumberEntity)((ArrayList)arb.a(this.a).get((String)arb.a(this.a).keySet().toArray()[paramInt1])).get(paramInt2)).getNumber());
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ard
 * JD-Core Version:    0.6.2
 */