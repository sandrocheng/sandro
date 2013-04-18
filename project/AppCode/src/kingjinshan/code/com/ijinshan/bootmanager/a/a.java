package com.ijinshan.bootmanager.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public final class a extends BaseAdapter
{
  private List a;
  private Context b;

  public a(Context paramContext, List paramList)
  {
    this.a = paramList;
    this.b = paramContext;
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    ((com.ijinshan.bootmanager.b.a)this.a.get(paramInt)).a(paramBoolean);
  }

  public final void a(List paramList)
  {
    this.a = paramList;
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    c localc = new c(this);
    View localView = LayoutInflater.from(this.b).inflate(2130903074, null);
    localc.a = ((ImageView)localView.findViewById(2131230934));
    localc.b = ((TextView)localView.findViewById(2131230935));
    localc.c = ((TextView)localView.findViewById(2131230936));
    localc.e = ((Button)localView.findViewById(2131230933));
    com.ijinshan.bootmanager.b.a locala = (com.ijinshan.bootmanager.b.a)this.a.get(paramInt);
    localc.a.setImageDrawable(locala.b());
    localc.b.setText(locala.e());
    localc.c.setText(locala.f());
    if ((locala.a()) && ("com.ijinshan.mguard".equals(locala.c())))
      localc.e.setVisibility(4);
    if (locala.a())
      localc.e.setText("禁止");
    while (true)
    {
      localc.e.setOnClickListener(new b(this, locala));
      return localView;
      localc.e.setText("允许");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.a.a
 * JD-Core Version:    0.6.2
 */