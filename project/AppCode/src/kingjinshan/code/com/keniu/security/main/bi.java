package com.keniu.security.main;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.keniu.security.main.a.ag;
import com.keniu.security.main.a.h;
import com.keniu.security.main.a.k;
import com.keniu.security.main.a.m;
import com.keniu.security.monitor.a;
import com.keniu.security.monitor.b;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bi extends BaseAdapter
  implements View.OnClickListener, b
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  public static final int e = 5;
  public static final int f = 6;
  public static final int g = 7;
  public static final int h = 8;
  private Context j = null;
  private h k = null;
  private LayoutInflater l = null;
  private List m = null;
  private List n = new ArrayList();

  bi(MainActivity paramMainActivity, Context paramContext, h paramh)
  {
    this.j = paramContext;
    this.k = paramh;
    this.l = ((LayoutInflater)this.j.getSystemService("layout_inflater"));
  }

  private List a(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      if (localm.b() == k.g)
      {
        bj localbj = new bj(this);
        localbj.a = 8;
        localbj.b = localm;
        localArrayList.add(localbj);
      }
    }
    return localArrayList;
  }

  private List a(List paramList, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      if ((localm.a() == paramInt1) && (localm.b() != k.g) && (localm.b() != k.h))
      {
        bj localbj = new bj(this);
        localbj.a = paramInt2;
        localbj.b = localm;
        localArrayList.add(localbj);
      }
    }
    return localArrayList;
  }

  private void f()
  {
    if (this.n != null)
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = new ArrayList();
      Iterator localIterator = this.n.iterator();
      while (localIterator.hasNext())
      {
        bj localbj = (bj)localIterator.next();
        if ((localbj.a == 1) || (localbj.a == 2))
          localArrayList1.add(localbj);
        else if ((localbj.a == 3) || (localbj.a == 4))
          localArrayList2.add(localbj);
        else if ((localbj.a == 7) || (localbj.a == 8))
          localArrayList3.add(localbj);
      }
      this.n.clear();
      if (localArrayList3.size() != 0)
        this.n.addAll(localArrayList3);
      if (localArrayList1.size() != 0)
        this.n.addAll(0, localArrayList1);
      if (localArrayList2.size() != 0)
        this.n.addAll(0, localArrayList2);
      notifyDataSetChanged();
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == a.x) && (MainActivity.c))
    {
      MainActivity.c = false;
      boolean bool = ((Boolean)paramObject1).booleanValue();
      this.i.a(bool);
    }
    return 0;
  }

  public final void a()
  {
    com.keniu.security.main.a.a.a = true;
    com.keniu.security.main.a.n.a = true;
    if ((this.m == null) || (this.m.size() == 0))
    {
      this.m = new ArrayList();
      this.m.addAll(this.k.b());
    }
    Iterator localIterator = a(this.m, k.c, 2).iterator();
    while (localIterator.hasNext())
      ((bj)localIterator.next()).b.a(this.i);
    MainActivity.e(this.i).c();
  }

  public final void a(int paramInt, Intent paramIntent)
  {
    Iterator localIterator = this.n.iterator();
    while (localIterator.hasNext())
    {
      bj localbj = (bj)localIterator.next();
      if ((!localbj.a()) && (localbj.b.h()))
        ((ag)localbj.b).a(paramInt, paramIntent);
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.n != null)
    {
      Iterator localIterator = this.n.iterator();
      while (localIterator.hasNext())
      {
        bj localbj = (bj)localIterator.next();
        if ((!localbj.a()) && (!localbj.b.g()))
          localbj.b.a(paramBoolean);
      }
      notifyDataSetChanged();
    }
  }

  public final void b()
  {
    this.n.clear();
  }

  public final void c()
  {
    if (this.n != null)
    {
      Iterator localIterator = this.n.iterator();
      while (localIterator.hasNext())
      {
        bj localbj = (bj)localIterator.next();
        if ((!localbj.a()) && (!localbj.b.g()))
          localbj.b.b(this.j);
      }
      notifyDataSetChanged();
    }
  }

  public final void d()
  {
    this.n.clear();
    this.m = new ArrayList();
    this.m.addAll(this.k.b());
    List localList1 = a(this.m, k.c, 2);
    if (localList1.size() > 0)
    {
      bj localbj1 = new bj(this);
      localbj1.a = 1;
      this.n.add(localbj1);
      this.n.addAll(localList1);
    }
    List localList2 = a(this.m, k.d, 4);
    if (localList2.size() > 0)
    {
      bj localbj2 = new bj(this);
      localbj2.a = 3;
      this.n.add(localbj2);
      this.n.addAll(localList2);
    }
    List localList3 = a(this.m, k.e, 6);
    if (localList3.size() > 0)
    {
      bj localbj3 = new bj(this);
      localbj3.a = 5;
      this.n.add(localbj3);
      this.n.addAll(localList3);
    }
    List localList4 = a(this.m);
    if (localList4.size() > 0)
    {
      bj localbj4 = new bj(this);
      localbj4.a = 7;
      this.n.add(localbj4);
      this.n.addAll(localList4);
    }
  }

  public final void e()
  {
    MainActivity.a(this.i, false);
    if ((this.m == null) || (this.m.size() == 0))
    {
      this.m = new ArrayList();
      this.m.addAll(this.k.b());
    }
    if (a(this.m, k.c, 2).size() > 0)
      MainActivity.G(this.i);
    List localList = a(this.m, k.d, 4);
    if (localList.size() > 0)
    {
      System.out.println("byHandList size is" + localList.size());
      MainActivity.H(this.i);
      if (localList.size() == 1)
      {
        bj localbj2 = (bj)localList.get(0);
        if ((!localbj2.a()) && (localbj2.b.i()))
          MainActivity.a(this.i, true);
      }
    }
    Iterator localIterator = this.n.iterator();
    while (localIterator.hasNext())
    {
      bj localbj1 = (bj)localIterator.next();
      if ((!localbj1.a()) && (localbj1.b.h()) && (!localbj1.b.g()))
        MainActivity.I(this.i);
    }
  }

  public final int getCount()
  {
    if (this.n == null);
    for (int i1 = 0; ; i1 = this.n.size())
      return i1;
  }

  public final Object getItem(int paramInt)
  {
    return this.n.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((this.k.d()) || (paramView == null));
    for (View localView = this.l.inflate(2130903206, null); ; localView = paramView)
    {
      bj localbj = (bj)getItem(paramInt);
      TextView localTextView1 = (TextView)localView.findViewById(2131231349);
      TextView localTextView2 = (TextView)localView.findViewById(2131231348);
      TextView localTextView3 = (TextView)localView.findViewById(2131231350);
      Button localButton = (Button)localView.findViewById(2131231351);
      ImageView localImageView1 = (ImageView)localView.findViewById(2131231347);
      ImageView localImageView2 = (ImageView)localView.findViewById(2131231352);
      m localm;
      String str;
      TextView localTextView4;
      if (!localbj.a())
      {
        localImageView1.setVisibility(0);
        localm = localbj.b;
        localTextView2.setVisibility(8);
        localTextView1.setVisibility(0);
        localTextView1.setText(localm.c());
        if (this.k.d())
        {
          localButton.setVisibility(8);
          str = localm.a(k.l);
          localTextView4 = localTextView3;
          localTextView4.setText(str);
          if (paramInt < getCount() - 1)
          {
            if (!((bj)getItem(paramInt + 1)).a())
              break label519;
            localImageView2.setVisibility(0);
          }
        }
      }
      while (true)
      {
        return localView;
        if (localm.g())
        {
          localTextView3.setVisibility(0);
          localButton.setVisibility(8);
          localImageView1.setBackgroundDrawable(this.i.getResources().getDrawable(2130837527));
          str = localm.a(k.n);
          localTextView4 = localTextView3;
          break;
        }
        if (localm.h())
          localImageView1.setBackgroundDrawable(this.i.getResources().getDrawable(2130837529));
        while (true)
        {
          localTextView3.setVisibility(8);
          localButton.setVisibility(0);
          localButton.setText(localm.a(k.l));
          localButton.setOnClickListener(this);
          localButton.setTag(Integer.valueOf(paramInt));
          break;
          localImageView1.setBackgroundDrawable(this.i.getResources().getDrawable(2130837528));
        }
        localImageView1.setVisibility(4);
        localTextView3.setVisibility(8);
        localButton.setVisibility(8);
        localTextView2.setVisibility(0);
        localTextView1.setVisibility(8);
        if (localbj.a == 1)
        {
          str = "一键优化项";
          localTextView4 = localTextView2;
          break;
        }
        if (localbj.a == 3)
        {
          str = "手动优化项";
          localTextView4 = localTextView2;
          break;
        }
        if (localbj.a == 5)
        {
          str = "检测提示项";
          localTextView4 = localTextView2;
          break;
        }
        if (localbj.a == 7)
        {
          str = "安全项";
          localTextView4 = localTextView2;
          break;
        }
        str = "";
        localTextView4 = localTextView2;
        break;
        label519: localImageView2.setVisibility(8);
      }
    }
  }

  public final void onClick(View paramView)
  {
    if (paramView.getId() == 2131231351)
    {
      MainActivity.F(this.i);
      bj localbj = (bj)getItem(((Integer)paramView.getTag()).intValue());
      if (!localbj.a())
      {
        localbj.b.a(this.j);
        if (localbj.b.a() != k.e)
        {
          localbj.b.b(this.j);
          MainActivity.f(this.i);
        }
        notifyDataSetChanged();
        MainActivity.g(this.i);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bi
 * JD-Core Version:    0.6.2
 */