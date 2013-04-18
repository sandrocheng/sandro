package com.keniu.security.main;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

final class m extends BaseAdapter
{
  private m(k paramk, byte paramByte)
  {
  }

  public final int getCount()
  {
    return 4;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (View localView = k.c(this.a).inflate(2130903228, null, false); ; localView = paramView)
    {
      ImageView localImageView = (ImageView)localView.findViewById(2131231442);
      TextView localTextView = (TextView)localView.findViewById(2131231443);
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        return localView;
        localImageView.setImageResource(2130837602);
        localTextView.setText(k.b(this.a).getString(2131428830));
        continue;
        localImageView.setImageResource(2130837907);
        localTextView.setText(k.b(this.a).getString(2131427909));
        continue;
        localImageView.setImageResource(2130837908);
        localTextView.setText(k.b(this.a).getString(2131427910));
        continue;
        localImageView.setImageResource(2130837603);
        localTextView.setText(k.b(this.a).getString(2131428831));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.m
 * JD-Core Version:    0.6.2
 */