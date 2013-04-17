import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;

public final class da extends cz<dh>
{
  public da(Context paramContext, List<dk<dh>> paramList)
  {
    super(paramContext, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    da.a locala;
    if (paramView == null)
    {
      paramView = a(paramInt, 2130903058);
      locala = new da.a();
      locala.a = ((TextView)paramView.findViewById(2131230782));
      paramView.setTag(locala);
    }
    while (true)
    {
      dh localdh = (dh)this.a.get(paramInt);
      locala.a.setText(localdh.a);
      return paramView;
      locala = (da.a)paramView.getTag();
    }
  }

  static final class a
  {
    TextView a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     da
 * JD-Core Version:    0.6.2
 */