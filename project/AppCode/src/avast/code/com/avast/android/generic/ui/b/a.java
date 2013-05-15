package com.avast.android.generic.ui.b;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.avast.android.generic.q;
import com.avast.android.generic.t;
import com.avast.android.generic.v;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class a extends BaseAdapter
{
  private Fragment a;
  private List b = null;
  private Context c;

  public a(Context paramContext, Fragment paramFragment)
  {
    this.a = paramFragment;
    this.c = paramContext;
  }

  private void a(int paramInt, c paramc)
  {
    if ((this.b == null) || (paramInt >= this.b.size()));
    while (true)
    {
      return;
      d locald = (d)this.b.get(paramInt);
      paramc.a.setText(locald.b(this.c));
      paramc.b.setText(locald.c(this.c));
      if (locald.b())
        paramc.a.setTextColor(this.c.getResources().getColor(q.d));
      else
        paramc.a.setTextColor(this.c.getResources().getColor(q.d));
    }
  }

  public List a()
  {
    return this.b;
  }

  protected abstract void a(Context paramContext, List paramList, boolean paramBoolean);

  public void a(Context paramContext, boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        if (this.b != null)
        {
          this.b.clear();
          LinkedList localLinkedList = new LinkedList();
          a(paramContext, localLinkedList, paramBoolean);
          Iterator localIterator = localLinkedList.iterator();
          if (!localIterator.hasNext())
            break;
          d locald = (d)localIterator.next();
          if ((locald.c()) && (!paramBoolean))
            continue;
          this.b.add(locald);
          continue;
        }
      }
      finally
      {
      }
      this.b = new LinkedList();
    }
  }

  public boolean a(Context paramContext)
  {
    return b(paramContext, false);
  }

  public int b()
  {
    if (this.b == null);
    for (int i = 0; ; i = this.b.size())
      return i;
  }

  public boolean b(Context paramContext, boolean paramBoolean)
  {
    if (this.b == null)
      a(paramContext, paramBoolean);
    List localList = this.b;
    boolean bool = false;
    if (localList == null);
    while (true)
    {
      return bool;
      int i = this.b.size();
      bool = false;
      if (i > 0)
        bool = true;
    }
  }

  public int getCount()
  {
    if (this.b == null);
    for (int i = 0; ; i = b())
      return i;
  }

  public Object getItem(int paramInt)
  {
    if ((this.b == null) || (paramInt >= this.b.size()));
    for (Object localObject = null; ; localObject = this.b.get(paramInt))
      return localObject;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((this.b == null) || (paramInt >= this.b.size()))
    {
      paramView = null;
      return paramView;
    }
    c localc2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.c).inflate(v.w, paramViewGroup, false);
      localc2 = new c(this, null);
      localc2.a = ((TextView)paramView.findViewById(t.N));
      localc2.b = ((TextView)paramView.findViewById(t.E));
      paramView.setTag(localc2);
    }
    for (c localc1 = localc2; ; localc1 = (c)paramView.getTag())
    {
      a(paramInt, localc1);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.b.a
 * JD-Core Version:    0.6.2
 */