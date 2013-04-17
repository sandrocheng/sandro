import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class j
  implements AdapterView.OnItemClickListener
{
  j(e.b paramb, df paramdf)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.a(paramInt);
    this.b.dismiss();
    e.a = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     j
 * JD-Core Version:    0.6.2
 */