import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import java.util.List;

public final class ahw extends BaseListAdapter<le>
{
  private boolean a;

  public ahw(Context paramContext, List<ListModel<le>> paramList, boolean paramBoolean)
  {
    super(paramContext, paramList);
    this.a = paramBoolean;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ahw.a locala;
    le localle;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903281);
      locala = new ahw.a();
      locala.a = ((TextView)paramView.findViewById(2131231033));
      locala.b = ((TextView)paramView.findViewById(2131231513));
      locala.c = ((TextView)paramView.findViewById(2131231298));
      locala.d = ((CheckBox)paramView.findViewById(2131231052));
      locala.e = ((TextView)paramView.findViewById(2131231515));
      paramView.setTag(locala);
      localle = (le)this.mDataList.get(paramInt);
      locala.a.setText(localle.a);
      locala.b.setText(localle.b);
      locala.c.setText(localle.c);
      if ((!localle.e) || (!this.a))
        break label199;
      locala.d.setVisibility(8);
      locala.e.setVisibility(0);
    }
    while (true)
    {
      return paramView;
      locala = (ahw.a)paramView.getTag();
      break;
      label199: locala.d.setVisibility(0);
      locala.e.setVisibility(8);
      locala.d.setChecked(localle.d);
      locala.d.setClickable(false);
    }
  }

  public static final class a
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public CheckBox d;
    public TextView e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahw
 * JD-Core Version:    0.6.2
 */