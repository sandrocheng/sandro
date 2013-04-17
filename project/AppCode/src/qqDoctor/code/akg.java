import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import java.util.List;

public final class akg extends BasePinnedListAdapter<lz>
{
  private static int a;
  private static int b;

  public akg(Context paramContext, BasePinnedListView<lz> paramBasePinnedListView, List<ListModel<lz>> paramList)
  {
    super(paramContext, paramList);
    paramBasePinnedListView.getListView();
    a = paramContext.getResources().getColor(2131296355);
    b = paramContext.getResources().getColor(2131296356);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    akg.a locala;
    lz locallz;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903308);
      locala = new akg.a();
      locala.a = ((ImageView)paramView.findViewById(2131231204));
      locala.b = ((TextView)paramView.findViewById(2131231596));
      locala.c = ((TextView)paramView.findViewById(2131231597));
      locala.d = ((TextView)paramView.findViewById(2131231598));
      locala.e = ((TextView)paramView.findViewById(2131231599));
      paramView.setTag(locala);
      locallz = (lz)this.mDataList.get(paramInt);
      locala.a.setImageDrawable(locallz.d);
      locala.b.setText(locallz.c);
      locala.c.setText(locallz.e);
      locala.d.setText(locallz.f);
      if (!locallz.f.contains(this.mContext.getString(2131428358)))
        break label222;
      locala.d.setTextColor(a);
    }
    while (true)
    {
      locala.e.setText(locallz.g);
      return paramView;
      locala = (akg.a)paramView.getTag();
      break;
      label222: locala.d.setTextColor(b);
    }
  }

  public static final class a
  {
    public ImageView a;
    public TextView b;
    public TextView c;
    public TextView d;
    public TextView e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akg
 * JD-Core Version:    0.6.2
 */