import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import java.util.List;

public final class akj extends BaseListAdapter<md>
{
  public akj(Context paramContext, List<ListModel<md>> paramList)
  {
    super(paramContext, paramList);
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final int getItemViewType(int paramInt)
  {
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    akj.a locala;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903332);
      locala = new akj.a();
      locala.a = ((ImageView)paramView.findViewById(2131230869));
      locala.b = ((TextView)paramView.findViewById(2131231033));
      locala.c = ((TextView)paramView.findViewById(2131231298));
      paramView.findViewById(2131231636).setVisibility(8);
      paramView.setTag(locala);
    }
    while (true)
    {
      md localmd = (md)this.mDataList.get(paramInt);
      locala.a.setImageResource(localmd.e);
      locala.b.setText(localmd.c);
      locala.c.setText(localmd.d);
      return paramView;
      locala = (akj.a)paramView.getTag();
    }
  }

  public final int getViewTypeCount()
  {
    return 1;
  }

  final class a
  {
    ImageView a;
    TextView b;
    TextView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akj
 * JD-Core Version:    0.6.2
 */