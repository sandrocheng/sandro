import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import java.util.ArrayList;
import java.util.List;

public final class aku extends BasePinnedListAdapter<lb>
{
  private ArrayList<String> a;
  private ArrayList<ArrayList<lb>> b;
  private View.OnClickListener c;

  public aku(Context paramContext, List<ListModel<lb>> paramList)
  {
    super(paramContext, paramList);
  }

  public final void a()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.a.size(); i++)
      localArrayList.add(new ListModel((List)this.b.get(i), (String)this.a.get(i), 0));
    setDataList(localArrayList);
  }

  public final void a(int paramInt)
  {
    if ((this.b.size() == 0) || (this.a.size() == 0));
    while (true)
    {
      return;
      this.b.remove(paramInt);
      this.a.remove(paramInt);
      a();
      notifyDataSetChanged();
    }
  }

  public final void a(View.OnClickListener paramOnClickListener)
  {
    this.c = paramOnClickListener;
  }

  public final void a(ArrayList<String> paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final void b(int paramInt)
  {
    if ((this.b.size() == 0) || (this.a.size() == 0));
    while (true)
    {
      return;
      int[] arrayOfInt = c(paramInt);
      if ((arrayOfInt[0] < this.a.size()) && (arrayOfInt[1] < ((ArrayList)this.b.get(arrayOfInt[0])).size()))
      {
        ((ArrayList)this.b.get(arrayOfInt[0])).remove(arrayOfInt[1]);
        if (((ArrayList)this.b.get(arrayOfInt[0])).size() == 0)
        {
          this.b.remove(arrayOfInt[0]);
          this.a.remove(arrayOfInt[0]);
        }
      }
      a();
      notifyDataSetChanged();
    }
  }

  public final void b(ArrayList<ArrayList<lb>> paramArrayList)
  {
    this.b = paramArrayList;
  }

  public final int[] c(int paramInt)
  {
    Object localObject;
    if ((this.b.size() == 0) || (this.a.size() == 0))
    {
      localObject = null;
      return localObject;
    }
    int[] arrayOfInt = new int[2];
    for (int i = 0; ; i++)
      if (i < this.a.size())
      {
        ArrayList localArrayList = (ArrayList)this.b.get(i);
        paramInt -= localArrayList.size();
        if (paramInt < 0)
        {
          arrayOfInt[0] = i;
          arrayOfInt[1] = (paramInt + localArrayList.size());
        }
      }
      else
      {
        localObject = arrayOfInt;
        break;
      }
  }

  public final ArrayList<lb> d(int paramInt)
  {
    int[] arrayOfInt = c(paramInt);
    if (arrayOfInt[0] >= this.b.size());
    for (Object localObject = null; ; localObject = (ArrayList)this.b.get(arrayOfInt[0]))
      return localObject;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aku.a locala;
    mk localmk;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903282);
      locala = new aku.a();
      locala.a = ((TextView)paramView.findViewById(2131231519));
      locala.b = ((TextView)paramView.findViewById(2131231517));
      locala.c = ((TextView)paramView.findViewById(2131231518));
      locala.g = ((LinearLayout)paramView.findViewById(2131231520));
      locala.d = ((LinearLayout)paramView.findViewById(2131231522));
      locala.e = ((LinearLayout)paramView.findViewById(2131231521));
      locala.f = ((LinearLayout)paramView.findViewById(2131231523));
      locala.h = ((LinearLayout)paramView.findViewById(2131231041));
      paramView.setTag(locala);
      lb locallb = (lb)this.mDataList.get(paramInt);
      localmk = locallb.c;
      locala.a.setText(localmk.getBody());
      if (!locallb.b)
        break label376;
      locala.g.setVisibility(0);
      locala.g.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837925));
      locala.h.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837925));
    }
    while (true)
    {
      locala.b.setText(localmk.a());
      locala.c.setText(a.a(localmk.date));
      locala.d.setOnClickListener(this.c);
      locala.d.setTag(Integer.valueOf(2));
      locala.e.setOnClickListener(this.c);
      locala.e.setTag(Integer.valueOf(1));
      locala.f.setOnClickListener(this.c);
      locala.f.setTag(Integer.valueOf(3));
      ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt);
      if (localItemModel.getItemStyle() == 0)
        setLabel(paramView, localItemModel);
      return paramView;
      locala = (aku.a)paramView.getTag();
      break;
      label376: locala.g.setVisibility(8);
      locala.h.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837920));
    }
  }

  public final boolean hasStableIds()
  {
    return false;
  }

  static final class a
  {
    TextView a;
    TextView b;
    TextView c;
    LinearLayout d;
    LinearLayout e;
    LinearLayout f;
    LinearLayout g;
    LinearLayout h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aku
 * JD-Core Version:    0.6.2
 */