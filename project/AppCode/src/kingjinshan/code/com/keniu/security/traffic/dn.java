package com.keniu.security.traffic;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.keniu.security.util.ax;
import java.util.Vector;

public final class dn extends BaseAdapter
{
  private Vector a;
  private LayoutInflater b;

  public dn(Context paramContext, Vector paramVector)
  {
    this.a = paramVector;
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  public final void a(Vector paramVector)
  {
    this.a = paramVector;
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
    if (paramView == null);
    for (View localView = this.b.inflate(2130903185, null); ; localView = paramView)
    {
      do localdo = (do)this.a.get(paramInt);
      ImageView localImageView = (ImageView)localView.findViewById(2131231324);
      TextView localTextView1 = (TextView)localView.findViewById(2131231325);
      ((TextView)localView.findViewById(2131231326)).setVisibility(8);
      TextView localTextView2 = (TextView)localView.findViewById(2131231327);
      localImageView.setImageDrawable(localdo.a);
      localTextView1.setText(localdo.b);
      localTextView2.setText(ax.c(localdo.d - localdo.c) + "/S");
      return localView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dn
 * JD-Core Version:    0.6.2
 */