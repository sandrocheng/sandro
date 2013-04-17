import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.utils.StringUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class aje extends BaseListAdapter<ll>
{
  private List<Integer> a = new ArrayList();
  private Context b;
  private BaseListView<ll> c;
  private boolean d = false;

  public aje(Context paramContext, BaseListView<ll> paramBaseListView, List<ListModel<ll>> paramList)
  {
    super(paramContext, paramList);
    this.b = paramContext;
    this.c = paramBaseListView;
  }

  public final void a()
  {
    if (!this.d)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.mDataList.iterator();
      while (localIterator.hasNext())
      {
        ll localll = (ll)localIterator.next();
        if (new File(localll.b()).isFile())
        {
          int i = localll.b().hashCode();
          if (i != -1)
            localArrayList.add(Integer.valueOf(i));
        }
      }
      this.a = localArrayList;
    }
    for (this.d = true; ; this.d = false)
    {
      notifyDataSetChanged();
      d();
      return;
      this.a.clear();
    }
  }

  public final List<Integer> b()
  {
    return this.a;
  }

  public final ArrayList<String> c()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.a.iterator();
    while (true)
    {
      if (!localIterator1.hasNext())
        break label117;
      Integer localInteger = (Integer)localIterator1.next();
      Iterator localIterator2 = this.mDataList.iterator();
      if (localIterator2.hasNext())
      {
        ll localll = (ll)localIterator2.next();
        if (localInteger.intValue() != localll.b().hashCode())
          break;
        String str = localll.b();
        if ((str != null) && (!str.equals("")))
          localArrayList.add(str);
      }
    }
    label117: return localArrayList;
  }

  public final void d()
  {
    BaseListView localBaseListView = this.c;
    List localList = localBaseListView.getOperatingBarDataList();
    int i = this.a.size();
    Iterator localIterator1 = localList.iterator();
    OperatingModel localOperatingModel;
    int j;
    if (localIterator1.hasNext())
    {
      localOperatingModel = (OperatingModel)localIterator1.next();
      if (localOperatingModel.getID() == 1)
      {
        Iterator localIterator2 = this.mDataList.iterator();
        j = 0;
        label73: if (localIterator2.hasNext())
        {
          ll localll = (ll)localIterator2.next();
          if ((!new File(localll.b()).isFile()) || (localll.b().hashCode() == -1))
            break label240;
        }
      }
    }
    label240: for (int k = j + 1; ; k = j)
    {
      j = k;
      break label73;
      if ((i == j) && (i > 0))
      {
        this.d = true;
        localOperatingModel.setCheck(true);
        localOperatingModel.setText(this.b.getString(2131427349));
      }
      while (true)
      {
        localBaseListView.refreshOperatingBar(localOperatingModel);
        break;
        this.d = false;
        localOperatingModel.setCheck(false);
        localOperatingModel.setText(this.b.getString(2131427349));
      }
      if (i == 0);
      for (boolean bool = false; ; bool = true)
      {
        localOperatingModel.setEnable(bool);
        localOperatingModel.setNumber(i);
        break;
      }
      return;
    }
  }

  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aje.a locala;
    ll localll;
    File localFile;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903088);
      locala = new aje.a();
      locala.a = ((ImageView)paramView.findViewById(2131230845));
      locala.b = ((TextView)paramView.findViewById(2131230846));
      locala.c = ((CheckBoxView)paramView.findViewById(2131230847));
      paramView.setTag(locala);
      localll = (ll)this.mDataList.get(paramInt);
      localFile = new File(StringUtil.assertNotNullString(localll.b()));
      if (!localFile.isDirectory())
        break label234;
      locala.c.setVisibility(8);
      locala.a.setImageDrawable(this.b.getResources().getDrawable(2130837808));
    }
    while (true)
    {
      int j = localll.b().hashCode();
      locala.b.setText(localll.a());
      locala.c.setClickListener(null);
      locala.c.setChecked(this.a.contains(Integer.valueOf(j)));
      locala.c.setTag(localll);
      locala.c.setClickListener(new ajf(this));
      return paramView;
      locala = (aje.a)paramView.getTag();
      break;
      label234: locala.c.setVisibility(0);
      int i = k.b(localFile);
      if (i == 0)
        locala.a.setImageDrawable(this.b.getResources().getDrawable(2130837819));
      else if (i == 1)
        locala.a.setImageDrawable(this.b.getResources().getDrawable(2130837832));
      else if (i == 2)
        locala.a.setImageDrawable(this.b.getResources().getDrawable(2130837814));
      else
        locala.a.setImageDrawable(this.b.getResources().getDrawable(2130837803));
    }
  }

  final class a
  {
    ImageView a;
    TextView b;
    CheckBoxView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aje
 * JD-Core Version:    0.6.2
 */