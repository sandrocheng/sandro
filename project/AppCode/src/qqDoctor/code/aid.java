import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import java.util.List;

public final class aid extends BaseListAdapter<lf>
{
  private Context a;
  private dv<lf> b;

  public aid(Context paramContext, List<ListModel<lf>> paramList)
  {
    super(paramContext, paramList);
    this.a = paramContext;
  }

  public final void a(dv<lf> paramdv)
  {
    this.b = paramdv;
  }

  public final int getItemViewType(int paramInt)
  {
    int i;
    if (paramInt >= this.mDataList.size())
      i = -1;
    while (true)
    {
      return i;
      lf locallf = (lf)getItem(paramInt);
      if ((locallf.b == 0) || (locallf.b == 1) || (locallf.b == 2))
        i = 0;
      else
        i = 1;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= this.mDataList.size())
      paramView = null;
    lf locallf;
    int i;
    do
    {
      return paramView;
      locallf = (lf)getItem(paramInt);
      i = getItemViewType(paramInt);
      if (i == 0)
      {
        aid.a locala2;
        if (paramView == null)
        {
          paramView = createItemView(paramInt, 2130903301);
          locala2 = new aid.a((byte)0);
          locala2.a = ((TextView)paramView.findViewById(2131231525));
          locala2.b = ((TextView)paramView.findViewById(2131231527));
          locala2.c = ((ButtonView)paramView.findViewById(2131231575));
          paramView.setTag(locala2);
        }
        for (aid.a locala1 = locala2; ; locala1 = (aid.a)paramView.getTag())
        {
          String str = locallf.name;
          TextView localTextView = locala1.a;
          if ((str == null) || ("".equals(str.trim())))
            str = this.a.getString(2131427333);
          localTextView.setText(str);
          locala1.b.setText(locallf.phonenum);
          locala1.c.setOnClickListener(new aie(this, locallf));
          break;
        }
      }
    }
    while (i != 1);
    aid.b localb2;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903302);
      localb2 = new aid.b((byte)0);
      localb2.a = ((ImageView)paramView.findViewById(2131231576));
      localb2.b = ((TextView)paramView.findViewById(2131231130));
      localb2.c = ((ImageView)paramView.findViewById(2131231564));
      paramView.setTag(localb2);
    }
    for (aid.b localb1 = localb2; ; localb1 = (aid.b)paramView.getTag())
    {
      localb1.a.setVisibility(0);
      localb1.a.setImageResource(2130837871);
      localb1.b.setText(locallf.name);
      localb1.c.setVisibility(8);
      break;
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  static final class a
  {
    TextView a;
    TextView b;
    ButtonView c;
  }

  static final class b
  {
    ImageView a;
    TextView b;
    ImageView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aid
 * JD-Core Version:    0.6.2
 */