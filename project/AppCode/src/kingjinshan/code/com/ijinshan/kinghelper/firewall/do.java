package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class do extends BaseAdapter
  implements CompoundButton.OnCheckedChangeListener
{
  private Context b = null;
  private List c = null;

  public do(ServiceSmsGroupActivity paramServiceSmsGroupActivity, Context paramContext, List paramList)
  {
    this.b = paramContext;
    this.c = paramList;
    if (this.c == null)
      this.c = new ArrayList();
  }

  public final void a()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((ej)localIterator.next()).c = true;
  }

  public final void a(int paramInt)
  {
    ej localej = (ej)this.c.get(paramInt);
    if (!((ej)this.c.get(paramInt)).c);
    for (boolean bool = true; ; bool = false)
    {
      localej.c = bool;
      return;
    }
  }

  public final void b()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((ej)localIterator.next()).c = false;
  }

  public final boolean c()
  {
    Iterator localIterator = this.c.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (((ej)localIterator.next()).c);
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public final int d()
  {
    int i = 0;
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      if (((ej)localIterator.next()).c)
        i++;
    return i;
  }

  public final List e()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      ej localej = (ej)localIterator.next();
      if (localej.c)
        localArrayList.add(localej);
    }
    return localArrayList;
  }

  public final void f()
  {
    if (this.c.size() <= 0);
    while (true)
    {
      return;
      for (int i = this.c.size() - 1; i >= 0; i--)
        if (((ej)this.c.get(i)).c)
          this.c.remove(i);
    }
  }

  public final int getCount()
  {
    return this.c.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.c.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ej localej = (ej)this.c.get(paramInt);
    View localView = ((LayoutInflater)this.b.getSystemService("layout_inflater")).inflate(2130903273, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131231364);
    TextView localTextView2 = (TextView)localView.findViewById(2131231365);
    TextView localTextView3 = (TextView)localView.findViewById(2131231366);
    TextView localTextView4 = (TextView)localView.findViewById(2131231367);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231362);
    if (ServiceSmsGroupActivity.d(this.a))
    {
      localCheckBox.setVisibility(0);
      localCheckBox.setChecked(localej.c);
      dp localdp = new dp(this);
      localdp.a = localCheckBox;
      localdp.b = paramInt;
      localCheckBox.setTag(localdp);
      localCheckBox.setOnCheckedChangeListener(this);
      localTextView1.setText(localej.b + "(" + localej.a.size() + ")");
      localTextView2.setText(((ServicesSmsListActivity.SMSContent)localej.a.get(0)).b);
      localTextView4.setText(ServiceSmsGroupActivity.b().format(new Date(((ServicesSmsListActivity.SMSContent)localej.a.get(0)).a)));
      if (localej.d.length() <= 0)
        break label294;
      localTextView3.setText(localej.d);
    }
    while (true)
    {
      return localView;
      localCheckBox.setVisibility(8);
      break;
      label294: localTextView3.setText(this.b.getString(2131427796));
    }
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    dp localdp = (dp)paramCompoundButton.getTag();
    ((ej)this.c.get(localdp.b)).c = paramBoolean;
    this.a.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.do
 * JD-Core Version:    0.6.2
 */