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

public final class cz extends BaseAdapter
{
  public Vector a;
  private LayoutInflater b;

  public cz(Context paramContext, Vector paramVector)
  {
    this.a = paramVector;
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  private void b(Vector paramVector)
  {
    this.a = paramVector;
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
      ae localae = (ae)this.a.get(paramInt);
      ImageView localImageView = (ImageView)localView.findViewById(2131231324);
      TextView localTextView1 = (TextView)localView.findViewById(2131231325);
      TextView localTextView2 = (TextView)localView.findViewById(2131231326);
      TextView localTextView3 = (TextView)localView.findViewById(2131231327);
      localImageView.setImageDrawable(localae.c);
      localTextView1.setText(localae.d);
      if (localae.f == -1000L)
        localTextView2.setText("共计");
      while (true)
      {
        localTextView3.setText(ax.b(localae.e));
        return localView;
        localTextView2.setText(ax.b(localae.f));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cz
 * JD-Core Version:    0.6.2
 */