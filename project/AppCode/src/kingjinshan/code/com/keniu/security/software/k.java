package com.keniu.security.software;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.f;
import com.keniu.security.d.a;
import com.keniu.security.util.ax;
import java.util.List;

final class k extends BaseAdapter
{
  public List a;
  private LayoutInflater c;
  private f d;

  public k(APKManagerActivity paramAPKManagerActivity, Context paramContext, List paramList)
  {
    this.c = LayoutInflater.from(paramContext);
    this.a = paramList;
    this.d = f.a(paramContext);
  }

  private a a(int paramInt)
  {
    return (a)this.a.get(paramInt);
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = a(paramInt).e;
    View localView3;
    if (i == 1)
    {
      localView3 = this.b.getLayoutInflater().inflate(2130903103, null, false);
      localView3.setClickable(false);
      TextView localTextView3 = (TextView)localView3.findViewById(2131231028);
      String str3 = this.b.getString(2131428713);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(APKManagerActivity.j(this.b));
      localTextView3.setText(String.format(str3, arrayOfObject3));
    }
    View localView2;
    for (Object localObject = localView3; ; localObject = localView2)
    {
      return localObject;
      if (i != 3)
        break;
      localView2 = this.b.getLayoutInflater().inflate(2130903103, null, false);
      localView2.setClickable(false);
      TextView localTextView2 = (TextView)localView2.findViewById(2131231028);
      String str2 = this.b.getString(2131428714);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(APKManagerActivity.k(this.b));
      localTextView2.setText(String.format(str2, arrayOfObject2));
    }
    View localView1;
    m localm2;
    label298: a locala;
    if ((paramView == null) || ((m)paramView.getTag() == null))
    {
      localView1 = this.c.inflate(2130903154, null, false);
      m localm1 = new m(this);
      localm1.a = ((ImageView)localView1.findViewById(2131231213));
      localm1.b = ((TextView)localView1.findViewById(2131231214));
      localm1.d = ((TextView)localView1.findViewById(2131231215));
      localm1.c = ((CheckBox)localView1.findViewById(2131230898));
      localView1.setTag(localm1);
      localm2 = localm1;
      locala = a(paramInt);
      Drawable localDrawable = this.d.a(locala.e(), localm2.a, new p());
      if (localDrawable != null)
        localm2.a.setImageDrawable(localDrawable);
      localm2.b.setText(locala.b());
      if (!locala.k())
        break label440;
      localm2.d.setText(2131428729);
    }
    while (true)
    {
      localm2.c.setChecked(locala.h());
      localm2.c.setTag(Integer.valueOf(paramInt));
      localm2.c.setOnClickListener(new l(this));
      localObject = localView1;
      break;
      localm2 = (m)paramView.getTag();
      localView1 = paramView;
      break label298;
      label440: TextView localTextView1 = localm2.d;
      String str1 = this.b.getString(2131428719);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = ax.f(locala.c());
      arrayOfObject1[1] = locala.d();
      localTextView1.setText(String.format(str1, arrayOfObject1));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.k
 * JD-Core Version:    0.6.2
 */