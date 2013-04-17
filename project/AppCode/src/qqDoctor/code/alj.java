import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView;
import java.util.List;

public final class alj extends ala
{
  public alj(bmd parambmd, List<ListModel<kv>> paramList)
  {
    super(parambmd, paramList, 0);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ala.a locala2;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903287);
      locala2 = new ala.a();
      locala2.a = ((TextView)paramView.findViewById(2131231033));
      locala2.b = ((ImageView)paramView.findViewById(2131230869));
      locala2.c = ((TextView)paramView.findViewById(2131231537));
      locala2.d = ((TextView)paramView.findViewById(2131231538));
      locala2.g = ((SoftwareUpdateIconView)paramView.findViewById(2131231541));
      locala2.f = ((ImageView)paramView.findViewById(2131231540));
      locala2.e = ((RatingBar)paramView.findViewById(2131231366));
      paramView.setTag(locala2);
    }
    for (ala.a locala1 = locala2; ; locala1 = (ala.a)paramView.getTag())
    {
      kv localkv = (kv)this.mDataList.get(paramInt);
      locala1.g.setTag(localkv);
      locala1.g.setOnClickListener(this.a);
      setLabel(paramView, (ItemModel)this.mItemModelList.get(paramInt));
      b(locala1, localkv);
      c(locala1, localkv);
      locala1.e.setRating(localkv.d.l());
      a(locala1, localkv);
      return paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alj
 * JD-Core Version:    0.6.2
 */