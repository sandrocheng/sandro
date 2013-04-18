package com.keniu.security.software;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

final class af extends BaseAdapter
{
  private af(SoftwareManager2 paramSoftwareManager2, byte paramByte)
  {
  }

  public final int getCount()
  {
    return 3;
  }

  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = this.a.getLayoutInflater().inflate(2130903287, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131231591);
    TextView localTextView2 = (TextView)localView.findViewById(2131231592);
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return localView;
      String str3 = this.a.getString(2131428699);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(SoftwareManager2.q(this.a));
      localTextView1.setText(String.format(str3, arrayOfObject3));
      localTextView2.setText(2131428702);
      continue;
      String str2 = this.a.getString(2131428700);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(SoftwareManager2.u(this.a));
      localTextView1.setText(String.format(str2, arrayOfObject2));
      localTextView2.setText(2131428703);
      continue;
      String str1 = this.a.getString(2131428701);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(SoftwareManager2.w(this.a));
      localTextView1.setText(String.format(str1, arrayOfObject1));
      localTextView2.setText(2131428704);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.af
 * JD-Core Version:    0.6.2
 */