import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import java.util.List;

public final class avf extends BaseListAdapter<avg>
{
  private int a = -1;
  private View.OnClickListener b;
  private View.OnClickListener c;
  private View.OnClickListener d;

  public avf(Context paramContext, List<ListModel<avg>> paramList)
  {
    super(paramContext, paramList);
  }

  public final int a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.a = paramInt;
  }

  public final void a(View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, View.OnClickListener paramOnClickListener3)
  {
    this.b = paramOnClickListener1;
    this.c = paramOnClickListener2;
    this.d = paramOnClickListener3;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    avf.a locala1;
    avg localavg;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903304);
      avf.a locala2 = new avf.a();
      locala2.a = ((LinearLayout)paramView.findViewById(2131231583));
      locala2.b = ((TextView)paramView.findViewById(2131231033));
      locala2.c = ((TextView)paramView.findViewById(2131231585));
      locala2.d = ((ImageView)paramView.findViewById(2131231586));
      locala2.e = ((LinearLayout)paramView.findViewById(2131231520));
      locala2.f = ((LinearLayout)paramView.findViewById(2131231580));
      locala2.g = ((LinearLayout)paramView.findViewById(2131231581));
      locala2.h = ((LinearLayout)paramView.findViewById(2131231582));
      paramView.setTag(locala2);
      locala1 = locala2;
      localavg = (avg)this.mDataList.get(paramInt);
      locala1.b.setText(localavg.a);
      locala1.c.setText(localavg.c[localavg.b]);
      if (paramInt == this.a)
        break label283;
      locala1.a.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
      locala1.d.setImageResource(2130837671);
      locala1.e.setVisibility(8);
    }
    while (true)
    {
      label239: ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
      if (localItemModel.getItemStyle() == 0)
        setLabel(paramView, localItemModel);
      return paramView;
      locala1 = (avf.a)paramView.getTag();
      break;
      label283: locala1.a.setBackgroundColor(this.mContext.getResources().getColor(2131296257));
      locala1.d.setImageResource(2130838350);
      locala1.e.setVisibility(0);
      ((TextView)locala1.f.findViewById(2131230748)).setText(localavg.c[0]);
      ((ImageView)locala1.f.findViewById(2131230869)).setImageResource(localavg.d[0]);
      locala1.f.setOnClickListener(this.b);
      ((TextView)locala1.g.findViewById(2131230748)).setText(localavg.c[1]);
      ((ImageView)locala1.g.findViewById(2131230869)).setImageResource(localavg.d[1]);
      locala1.g.setOnClickListener(this.c);
      if (localavg.c.length <= 2)
      {
        locala1.h.setVisibility(8);
        locala1.h.setVisibility(8);
      }
      while (true)
        switch (localavg.b)
        {
        default:
          locala1.f.findViewById(2131230872).setVisibility(4);
          locala1.g.findViewById(2131230872).setVisibility(4);
          locala1.h.findViewById(2131230872).setVisibility(4);
          break label239;
          locala1.h.setVisibility(0);
          locala1.h.setVisibility(0);
          ((TextView)locala1.h.findViewById(2131230748)).setText(localavg.c[2]);
          ((ImageView)locala1.h.findViewById(2131230869)).setImageResource(localavg.d[2]);
          locala1.h.setOnClickListener(this.d);
        case 0:
        case 1:
        case 2:
        }
      locala1.f.findViewById(2131230872).setVisibility(0);
      locala1.g.findViewById(2131230872).setVisibility(4);
      locala1.h.findViewById(2131230872).setVisibility(4);
      continue;
      locala1.f.findViewById(2131230872).setVisibility(4);
      locala1.g.findViewById(2131230872).setVisibility(0);
      locala1.h.findViewById(2131230872).setVisibility(4);
      continue;
      locala1.f.findViewById(2131230872).setVisibility(4);
      locala1.g.findViewById(2131230872).setVisibility(4);
      locala1.h.findViewById(2131230872).setVisibility(0);
    }
  }

  final class a
  {
    LinearLayout a;
    TextView b;
    TextView c;
    ImageView d;
    LinearLayout e;
    LinearLayout f;
    LinearLayout g;
    LinearLayout h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avf
 * JD-Core Version:    0.6.2
 */