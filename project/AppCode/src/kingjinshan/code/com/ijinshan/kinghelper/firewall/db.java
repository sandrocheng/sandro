package com.ijinshan.kinghelper.firewall;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;

final class db extends BaseAdapter
{
  private String[] b;

  public db(IpProvinceCityActivity paramIpProvinceCityActivity, String[] paramArrayOfString)
  {
    this.b = paramArrayOfString;
  }

  private String a(int paramInt)
  {
    return this.b[paramInt];
  }

  public final int getCount()
  {
    return this.b.length;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.a);
    if (paramView == null);
    for (View localView = localLayoutInflater.inflate(2130903320, null); ; localView = paramView)
    {
      ((RadioButton)localView.findViewById(2131231731)).setText(this.b[paramInt]);
      return localView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.db
 * JD-Core Version:    0.6.2
 */