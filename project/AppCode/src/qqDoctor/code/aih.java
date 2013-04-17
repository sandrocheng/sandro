import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

public final class aih extends BaseListAdapter<RadioButtonMode>
{
  public aih(Context paramContext, List<ListModel<RadioButtonMode>> paramList)
  {
    super(paramContext, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aih.a locala;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903310);
      locala = new aih.a();
      locala.a = ((TextView)paramView.findViewById(2131230875));
      locala.b = ((CheckBoxView)paramView.findViewById(2131231600));
      paramView.setTag(locala);
    }
    while (true)
    {
      locala.a.setText(((RadioButtonMode)this.mDataList.get(paramInt)).getRadioButtonName());
      locala.b.setClickable(false);
      locala.b.setChecked(((RadioButtonMode)this.mDataList.get(paramInt)).isSelected());
      return paramView;
      locala = (aih.a)paramView.getTag();
    }
  }

  static final class a
  {
    TextView a;
    CheckBoxView b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aih
 * JD-Core Version:    0.6.2
 */