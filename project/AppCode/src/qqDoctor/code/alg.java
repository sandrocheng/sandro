import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class alg extends BasePinnedListAdapter<kw>
{
  private Context a;
  private List<Integer> b = new ArrayList();
  private bmp c;

  public alg(bmp parambmp, List<ListModel<kw>> paramList)
  {
    super(parambmp.getContext(), paramList);
    this.c = parambmp;
    this.a = this.c.getContext();
  }

  public final void a()
  {
    if (this.b.size() != 0)
    {
      this.c.a().setButtonEnabled(true);
      this.c.a().setText(this.a.getString(2131430171) + "(" + this.b.size() + ")");
    }
    while (true)
    {
      return;
      this.c.a().setButtonEnabled(false);
      this.c.a().setText(this.a.getString(2131430171));
    }
  }

  public final void a(Integer paramInteger)
  {
    this.b.remove(paramInteger);
  }

  public final List<kw> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.mDataList.iterator();
    if (localIterator1.hasNext())
    {
      kw localkw = (kw)localIterator1.next();
      Iterator localIterator2 = this.b.iterator();
      label117: 
      while (localIterator2.hasNext())
      {
        Integer localInteger = (Integer)localIterator2.next();
        if (localkw.isApk());
        for (int i = localkw.getApkPath().hashCode(); ; i = localkw.getPackageName().hashCode())
        {
          if (i != localInteger.intValue())
            break label117;
          localArrayList.add(localkw);
          break;
        }
      }
    }
    return localArrayList;
  }

  public final void c()
  {
    this.b.clear();
  }

  public final void d()
  {
    while (true)
    {
      kw localkw;
      synchronized (this.mDataList)
      {
        Iterator localIterator = this.mDataList.iterator();
        if (!localIterator.hasNext())
          break;
        localkw = (kw)localIterator.next();
        if (!localkw.isApk())
          continue;
        List localList2 = this.b;
        if (localkw.isApk())
        {
          i = localkw.getApkPath().hashCode();
          localList2.add(Integer.valueOf(i));
        }
      }
      int i = localkw.getPackageName().hashCode();
    }
    notifyDataSetChanged();
    a();
  }

  public final int getCount()
  {
    return this.mDataList.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.mDataList.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = -1;
    alg.a locala;
    kw localkw;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903330);
      locala = new alg.a();
      locala.a = ((ImageView)paramView.findViewById(2131230869));
      locala.b = ((TextView)paramView.findViewById(2131231033));
      locala.c = ((TextView)paramView.findViewById(2131231570));
      locala.d = ((CheckBoxView)paramView.findViewById(2131231052));
      locala.e = ((TextView)paramView.findViewById(2131231631));
      locala.f = ((TextView)paramView.findViewById(2131231630));
      paramView.setTag(locala);
      localkw = (kw)this.mDataList.get(paramInt);
      locala.a.setImageDrawable(localkw.getIcon());
      locala.b.setText(localkw.getAppName());
      TextView localTextView = locala.c;
      if (!localkw.isApk())
        break label407;
      if (localkw.n() != 9)
        break label322;
      i = 2131428593;
      label184: localTextView.setText(i);
      if (!localkw.y())
        break label504;
      locala.d.setVisibility(8);
      locala.e.setVisibility(0);
      locala.e.setText(this.a.getString(2131429665));
      if (!localkw.isApk())
        break label622;
      locala.f.setVisibility(0);
      locala.f.setText(localkw.getVersion() + this.a.getString(2131428301));
    }
    while (true)
    {
      setLabel(paramView, (ItemModel)this.mItemModelList.get(paramInt));
      return paramView;
      locala = (alg.a)paramView.getTag();
      break;
      label322: if (localkw.n() == 11)
      {
        i = 2131428594;
        break label184;
      }
      if (localkw.n() == 6)
      {
        i = 2131428598;
        break label184;
      }
      if (localkw.n() == 12)
      {
        i = 2131429616;
        break label184;
      }
      if (localkw.n() == 14)
      {
        i = 2131429618;
        break label184;
      }
      if (localkw.n() != 13)
        break label184;
      i = 2131429617;
      break label184;
      label407: if (localkw.v() == i)
      {
        i = 2131428214;
        break label184;
      }
      if (localkw.v() == 0)
      {
        i = 2131429644;
        break label184;
      }
      if (localkw.v() == 1)
      {
        i = 2131429645;
        break label184;
      }
      if (localkw.v() == 2)
      {
        i = 2131429646;
        break label184;
      }
      if (localkw.v() == 3)
      {
        i = 2131429647;
        break label184;
      }
      if (localkw.v() != 4)
        break label184;
      i = 2131429570;
      break label184;
      label504: locala.d.setVisibility(0);
      locala.d.setClickListener(null);
      CheckBoxView localCheckBoxView = locala.d;
      List localList = this.b;
      if (localkw.isApk());
      for (int j = localkw.getApkPath().hashCode(); ; j = localkw.getPackageName().hashCode())
      {
        localCheckBoxView.setChecked(localList.contains(Integer.valueOf(j)));
        locala.d.setTag(localkw);
        locala.d.setClickListener(new alh(this));
        locala.e.setVisibility(8);
        break;
      }
      label622: locala.f.setVisibility(8);
    }
  }

  static final class a
  {
    ImageView a;
    TextView b;
    TextView c;
    CheckBoxView d;
    TextView e;
    TextView f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alg
 * JD-Core Version:    0.6.2
 */