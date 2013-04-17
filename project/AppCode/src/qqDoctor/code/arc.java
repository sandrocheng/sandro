import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnGroupClickListener;
import java.util.HashMap;
import java.util.Set;

final class arc
  implements ExpandableListView.OnGroupClickListener
{
  arc(arb paramarb)
  {
  }

  public final boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong)
  {
    for (int i = 0; i < arb.a(this.a).keySet().size(); i++)
      if (i != paramInt)
        arb.b(this.a).collapseGroup(i);
    if (arb.b(this.a).isGroupExpanded(paramInt))
      arb.b(this.a).collapseGroup(paramInt);
    while (true)
    {
      return true;
      arb.b(this.a).expandGroup(paramInt);
      arb.b(this.a).setSelectedGroup(paramInt);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arc
 * JD-Core Version:    0.6.2
 */