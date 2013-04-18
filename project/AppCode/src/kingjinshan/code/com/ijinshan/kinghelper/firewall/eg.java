package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class eg extends BaseAdapter
  implements CompoundButton.OnCheckedChangeListener
{
  private Context b;
  private boolean c = false;
  private List d = new ArrayList();

  public eg(ServicesSmsListActivity paramServicesSmsListActivity, Context paramContext)
  {
    this.b = paramContext;
  }

  private static int a(ei paramei)
  {
    int i = 0;
    Iterator localIterator = paramei.a.iterator();
    while (localIterator.hasNext())
      i += ((ej)localIterator.next()).a.size();
    return i;
  }

  private void a(ServicesSmsListActivity.SMSContent paramSMSContent)
  {
    int i = ServicesSmsListActivity.h(this.a).a(paramSMSContent.d);
    int j;
    if ((i > 0) && (i < dq.f))
    {
      if (e.a(i))
        break label255;
      j = dq.f;
    }
    while (true)
    {
      Iterator localIterator1 = this.d.iterator();
      ei localei;
      while (localIterator1.hasNext())
      {
        localei = (ei)localIterator1.next();
        if (localei.b == j)
        {
          Iterator localIterator2 = localei.a.iterator();
          while (localIterator2.hasNext())
          {
            ej localej2 = (ej)localIterator2.next();
            if (localej2.b.equals(paramSMSContent.d))
              localej2.a.add(paramSMSContent);
          }
        }
      }
      for (int k = 1; ; k = 0)
      {
        if (k == 0)
        {
          ej localej1 = new ej(this);
          localej1.b = paramSMSContent.d;
          localej1.a.add(paramSMSContent);
          localej1.d = e.d(paramSMSContent.d);
          localei.a.add(localej1);
        }
        return;
        if (i != 0)
          break label255;
        i = e.b(paramSMSContent.d);
        if (i == 0)
        {
          j = dq.f;
          break;
        }
        if (!ServicesSmsListActivity.h(this.a).b(i))
          break label255;
        j = dq.f;
        break;
      }
      label255: j = i;
    }
  }

  private static void a(ei paramei1, ei paramei2)
  {
    Iterator localIterator = paramei1.a.iterator();
    while (localIterator.hasNext())
    {
      ej localej = (ej)localIterator.next();
      paramei2.a.add(localej);
    }
  }

  private void e()
  {
    List localList1 = e.b();
    List localList2 = ServicesSmsListActivity.h(this.a).b();
    Object localObject = null;
    Iterator localIterator1 = localList1.iterator();
    while (localIterator1.hasNext())
    {
      k localk = (k)localIterator1.next();
      ei localei2 = new ei(this);
      localei2.e = localk.b;
      localei2.f = localk.c;
      localei2.b = localk.a;
      if (!ServicesSmsListActivity.h(this.a).b(localk.a))
        this.d.add(localei2);
    }
    Iterator localIterator2 = localList2.iterator();
    while (localIterator2.hasNext())
    {
      dr localdr = (dr)localIterator2.next();
      ei localei1 = new ei(this);
      localei1.e = localdr.a;
      localei1.f = localdr.c;
      localei1.b = localdr.b;
      if (localdr.b == dq.f)
        localObject = localei1;
      else
        this.d.add(localei1);
    }
    if (localObject != null)
      this.d.add(localObject);
  }

  public final void a(int paramInt)
  {
    ei localei = (ei)this.d.get(paramInt);
    if (!((ei)this.d.get(paramInt)).d);
    for (boolean bool = true; ; bool = false)
    {
      localei.d = bool;
      return;
    }
  }

  public final void a(int paramInt, String paramString1, String paramString2)
  {
    ei localei = new ei(this);
    localei.b = paramInt;
    localei.f = paramString2;
    localei.e = paramString1;
    if (this.d.size() > 0)
      this.d.add(this.d.size() - 1, localei);
    while (true)
    {
      return;
      this.d.add(localei);
    }
  }

  public final void a(Cursor paramCursor)
  {
    List localList1 = e.b();
    List localList2 = ServicesSmsListActivity.h(this.a).b();
    Object localObject = null;
    Iterator localIterator1 = localList1.iterator();
    while (localIterator1.hasNext())
    {
      k localk = (k)localIterator1.next();
      ei localei3 = new ei(this);
      localei3.e = localk.b;
      localei3.f = localk.c;
      localei3.b = localk.a;
      if (!ServicesSmsListActivity.h(this.a).b(localk.a))
        this.d.add(localei3);
    }
    Iterator localIterator2 = localList2.iterator();
    while (localIterator2.hasNext())
    {
      dr localdr = (dr)localIterator2.next();
      ei localei2 = new ei(this);
      localei2.e = localdr.a;
      localei2.f = localdr.c;
      localei2.b = localdr.b;
      if (localdr.b == dq.f)
        localObject = localei2;
      else
        this.d.add(localei2);
    }
    if (localObject != null)
      this.d.add(localObject);
    ServicesSmsListActivity.SMSContent localSMSContent;
    int j;
    int k;
    if (paramCursor.moveToFirst())
    {
      String str1 = paramCursor.getString(paramCursor.getColumnIndex("address"));
      String str2 = paramCursor.getString(paramCursor.getColumnIndex("body"));
      long l = paramCursor.getLong(paramCursor.getColumnIndex("date"));
      int i = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
      if (!j.a(str1))
      {
        localSMSContent = new ServicesSmsListActivity.SMSContent();
        localSMSContent.b = str2;
        localSMSContent.a = l;
        localSMSContent.d = str1;
        localSMSContent.c = i;
        j = ServicesSmsListActivity.h(this.a).a(localSMSContent.d);
        if ((j <= 0) || (j >= dq.f))
          break label600;
        if (e.a(j))
          break label657;
        k = dq.f;
      }
    }
    while (true)
    {
      label402: Iterator localIterator3 = this.d.iterator();
      ei localei1;
      while (localIterator3.hasNext())
      {
        localei1 = (ei)localIterator3.next();
        if (localei1.b == k)
        {
          Iterator localIterator4 = localei1.a.iterator();
          while (localIterator4.hasNext())
          {
            ej localej2 = (ej)localIterator4.next();
            if (localej2.b.equals(localSMSContent.d))
              localej2.a.add(localSMSContent);
          }
        }
      }
      for (int m = 1; ; m = 0)
      {
        if (m == 0)
        {
          ej localej1 = new ej(this);
          localej1.b = localSMSContent.d;
          localej1.a.add(localSMSContent);
          localej1.d = e.d(localSMSContent.d);
          localei1.a.add(localej1);
        }
        if (paramCursor.moveToNext())
          break;
        if (!paramCursor.isClosed())
          paramCursor.close();
        return;
        label600: if (j != 0)
          break label657;
        j = e.b(localSMSContent.d);
        if (j == 0)
        {
          k = dq.f;
          break label402;
        }
        if (!ServicesSmsListActivity.h(this.a).b(j))
          break label657;
        k = dq.f;
        break label402;
      }
      label657: k = j;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final boolean a()
  {
    return this.c;
  }

  public final List b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      ei localei = (ei)localIterator.next();
      if ((localei.d) && (localei.b != dq.f))
        localArrayList.add(localei);
    }
    return localArrayList;
  }

  public final void b(boolean paramBoolean)
  {
    if (this.d.size() > 0)
    {
      ei localei1 = (ei)this.d.get(this.d.size() - 1);
      for (int i = this.d.size() - 1; i >= 0; i--)
      {
        ei localei2 = (ei)this.d.get(i);
        if ((localei2.d) && (localei2.b != dq.f))
        {
          if (!paramBoolean)
          {
            Iterator localIterator = localei2.a.iterator();
            while (localIterator.hasNext())
            {
              ej localej = (ej)localIterator.next();
              localei1.a.add(localej);
            }
          }
          this.d.remove(i);
        }
      }
    }
  }

  public final int c()
  {
    int i = 0;
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      ei localei = (ei)localIterator.next();
      if ((localei.d) && (localei.b != dq.f))
        i++;
    }
    return i;
  }

  public final List d()
  {
    return this.d;
  }

  public final int getCount()
  {
    if (this.c);
    for (int i = this.d.size() - 1; ; i = this.d.size())
      return i;
  }

  public final Object getItem(int paramInt)
  {
    return this.d.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ei localei = (ei)this.d.get(paramInt);
    View localView = ((LayoutInflater)this.b.getSystemService("layout_inflater")).inflate(2130903275, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131231364);
    TextView localTextView2 = (TextView)localView.findViewById(2131231365);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231362);
    String str = localei.e + "(" + localei.a.size() + ")";
    if (this.c)
    {
      localCheckBox.setVisibility(0);
      localCheckBox.setChecked(localei.d);
    }
    while (true)
    {
      eh localeh = new eh(this);
      localeh.a = localCheckBox;
      localeh.b = paramInt;
      localCheckBox.setTag(localeh);
      localCheckBox.setOnCheckedChangeListener(this);
      localTextView1.setText(str);
      localTextView2.setText(localei.f);
      return localView;
      localCheckBox.setVisibility(8);
    }
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    eh localeh = (eh)paramCompoundButton.getTag();
    ((ei)this.d.get(localeh.b)).d = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.eg
 * JD-Core Version:    0.6.2
 */