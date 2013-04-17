import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class cz<T> extends BaseAdapter
{
  protected List<T> a = new ArrayList();
  private List<dk<T>> b = new ArrayList();
  private List<dj> c = new ArrayList();
  private LayoutInflater d;

  public cz(Context paramContext, List<dk<T>> paramList)
  {
    this.b = paramList;
    this.d = LayoutInflater.from(paramContext);
  }

  public final View a(int paramInt1, int paramInt2)
  {
    dj localdj = (dj)this.c.get(paramInt1);
    View localView2;
    if (localdj.a == 0)
    {
      localView2 = this.d.inflate(2130903081, null);
      LinearLayout localLinearLayout = (LinearLayout)localView2.findViewById(2131230853);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      localLinearLayout.addView(this.d.inflate(paramInt2, null), 0, localLayoutParams);
      TextView localTextView = (TextView)localView2.findViewById(2131230852);
      if (localdj.b == null)
        localTextView.setVisibility(8);
      if (localTextView != null)
        localTextView.setText(localdj.b);
    }
    for (View localView1 = localView2; ; localView1 = this.d.inflate(paramInt2, null))
      return localView1;
  }

  public int getCount()
  {
    return this.a.size();
  }

  public Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    if (((dj)this.c.get(paramInt)).a == 0);
    for (int i = 0; ; i = 1)
      return i;
  }

  public int getViewTypeCount()
  {
    return 2;
  }

  public void notifyDataSetChanged()
  {
    while (true)
    {
      dk localdk;
      List localList2;
      ArrayList localArrayList;
      synchronized (this.b)
      {
        this.a.clear();
        this.c.clear();
        Iterator localIterator = this.b.iterator();
        if (!localIterator.hasNext())
          break label264;
        localdk = (dk)localIterator.next();
        this.a.addAll(localdk.b);
        localList2 = this.c;
        if (localdk.a == 0)
        {
          localArrayList = new ArrayList();
          StringBuilder localStringBuilder = new StringBuilder().append(null);
          if (!localdk.d)
            break label271;
          str1 = "(" + localdk.b.size() + ")";
          String str2 = str1;
          int i = localdk.b.size();
          int j = 0;
          if (j < i)
          {
            dj localdj = new dj();
            if (j == 0)
            {
              localdj.a = 0;
              localArrayList.add(localdj);
              j++;
              continue;
            }
            localdj.b = str2;
            localdj.a = 1;
          }
        }
      }
      for (Object localObject2 = localArrayList; ; localObject2 = localdk.a())
      {
        localList2.addAll((Collection)localObject2);
        break;
      }
      label264: super.notifyDataSetChanged();
      return;
      label271: String str1 = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cz
 * JD-Core Version:    0.6.2
 */