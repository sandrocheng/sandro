import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class ahy extends BaseListAdapter<ani.a>
{
  public ahy(Context paramContext, List<ListModel<ani.a>> paramList)
  {
    super(paramContext, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ahy.a locala;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903283);
      locala = new ahy.a();
      paramView.findViewById(2131231524);
      locala.a = ((TextView)paramView.findViewById(2131231525));
      locala.b = ((TextView)paramView.findViewById(2131231527));
      locala.c = ((TextView)paramView.findViewById(2131231528));
      locala.d = ((CheckBoxView)paramView.findViewById(2131231052));
      locala.f = ((LinearLayout)paramView.findViewById(2131231530));
      locala.e = ((ImageView)paramView.findViewById(2131231529));
      paramView.setTag(locala);
      ani.a locala1 = (ani.a)this.mDataList.get(paramInt);
      locala.a.setText(locala1.a);
      locala.b.setText(locala1.b);
      locala.c.setVisibility(0);
      locala.c.setText(locala1.c);
      locala.d.setChecked(locala1.g);
      locala.d.setClickable(false);
      locala.f.setClickable(false);
      if (!locala1.h)
        break label274;
      locala.f.setVisibility(8);
      if (!locala1.i)
        break label261;
      locala.e.setVisibility(0);
    }
    while (true)
    {
      return paramView;
      locala = (ahy.a)paramView.getTag();
      break;
      label261: locala.e.setVisibility(8);
      continue;
      label274: locala.e.setVisibility(8);
    }
  }

  static final class a
  {
    TextView a;
    TextView b;
    TextView c;
    CheckBoxView d;
    ImageView e;
    LinearLayout f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahy
 * JD-Core Version:    0.6.2
 */