import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ajd extends BaseAdapter
{
  protected Context a;
  protected boolean b;
  protected List<Integer> c = new ArrayList();
  protected LayoutInflater d;
  protected List<lj> e;
  protected BaseView f;
  private boolean g = false;

  public ajd(Context paramContext, BaseView paramBaseView, Boolean paramBoolean, List<lj> paramList)
  {
    this.a = paramContext;
    this.f = paramBaseView;
    this.d = LayoutInflater.from(paramContext);
    this.b = paramBoolean.booleanValue();
    this.e = paramList;
  }

  private void c()
  {
    BaseView localBaseView = this.f;
    List localList = localBaseView.getOperatingBarDataList();
    int i = this.c.size();
    Iterator localIterator1 = localList.iterator();
    OperatingModel localOperatingModel;
    int j;
    label73: lj locallj;
    int k;
    if (localIterator1.hasNext())
    {
      localOperatingModel = (OperatingModel)localIterator1.next();
      if (localOperatingModel.getID() == 2)
      {
        Iterator localIterator2 = this.e.iterator();
        j = 0;
        if (localIterator2.hasNext())
        {
          locallj = (lj)localIterator2.next();
          if (locallj == null)
          {
            k = -1;
            label103: if (k == -1)
              break label246;
          }
        }
      }
    }
    label246: for (int m = j + 1; ; m = j)
    {
      j = m;
      break label73;
      k = locallj.a().hashCode();
      break label103;
      if ((i == j) && (i > 0))
      {
        this.g = true;
        localOperatingModel.setCheck(true);
        localOperatingModel.setText(this.a.getString(2131427349));
      }
      do
        while (true)
        {
          localBaseView.refreshOperatingBar(localOperatingModel);
          break;
          this.g = false;
          localOperatingModel.setCheck(false);
          localOperatingModel.setText(this.a.getString(2131427349));
        }
      while (localOperatingModel.getID() != 1);
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

  public final void a()
  {
    if (!this.g)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.e.iterator();
      label82: 
      while (localIterator.hasNext())
      {
        lj locallj = (lj)localIterator.next();
        if (locallj == null);
        for (int i = -1; ; i = locallj.a().hashCode())
        {
          if (i == -1)
            break label82;
          localArrayList.add(Integer.valueOf(i));
          break;
        }
      }
      this.c = localArrayList;
    }
    for (this.g = true; ; this.g = false)
    {
      notifyDataSetChanged();
      c();
      return;
      this.c.clear();
    }
  }

  protected final void a(View paramView)
  {
    lj locallj = (lj)paramView.getTag();
    if (locallj == null);
    for (int i = -1; i == -1; i = locallj.a().hashCode())
      return;
    if (((CheckBoxView)paramView).getChecked())
      if (!this.c.contains(Integer.valueOf(i)))
        this.c.add(Integer.valueOf(i));
    while (true)
    {
      c();
      break;
      this.c.remove(new Integer(i));
    }
  }

  public final ArrayList<lj> b()
  {
    List localList = this.c;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = localList.iterator();
    if (localIterator1.hasNext())
    {
      Integer localInteger = (Integer)localIterator1.next();
      Iterator localIterator2 = this.e.iterator();
      label116: 
      while (localIterator2.hasNext())
      {
        lj locallj = (lj)localIterator2.next();
        int i = localInteger.intValue();
        if (locallj == null);
        for (int j = -1; ; j = locallj.a().hashCode())
        {
          if (i != j)
            break label116;
          localArrayList.add(locallj);
          break;
        }
      }
    }
    return localArrayList;
  }

  public int getCount()
  {
    if (this.e != null);
    for (int i = this.e.size(); ; i = 0)
      return i;
  }

  public Object getItem(int paramInt)
  {
    return this.e.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajd
 * JD-Core Version:    0.6.2
 */