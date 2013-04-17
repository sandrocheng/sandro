import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class axm
  implements AdapterView.OnItemSelectedListener
{
  axm(axj paramaxj)
  {
  }

  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!axj.E(this.a).isShown())
      axj.E(this.a).setVisibility(0);
    int i = axj.z(this.a).a().size();
    if (i != 0)
    {
      int j = paramInt % i;
      if (j < axj.b(this.a).size())
      {
        Integer localInteger = (Integer)new ArrayList(axj.y(this.a).keySet()).get(j);
        axj.I(this.a).setText(axj.a(this.a, localInteger));
        axj.a(this.a, j);
      }
    }
  }

  public final void onNothingSelected(AdapterView<?> paramAdapterView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axm
 * JD-Core Version:    0.6.2
 */