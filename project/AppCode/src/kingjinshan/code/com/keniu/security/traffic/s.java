package com.keniu.security.traffic;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

final class s extends ArrayAdapter
{
  s(SaveTrafficWhiteListActivity paramSaveTrafficWhiteListActivity, Context paramContext, f[] paramArrayOff, LayoutInflater paramLayoutInflater)
  {
    super(paramContext, 2130903318, 2131231384, paramArrayOff);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView1;
    t localt2;
    if (paramView == null)
    {
      t localt1 = new t(this.b);
      localView1 = this.a.inflate(2130903318, paramViewGroup, false);
      localt1.b = ((ImageView)localView1.findViewById(2131231382));
      localt1.c = ((TextView)localView1.findViewById(2131231384));
      localt1.a = ((CheckBox)localView1.findViewById(2131231729));
      localView1.setTag(localt1);
      localt2 = localt1;
    }
    for (View localView2 = localView1; ; localView2 = paramView)
    {
      f localf = SaveTrafficWhiteListActivity.a(this.b)[paramInt];
      localt2.b.setImageDrawable(localf.h);
      localt2.c.setText(localf.toString());
      localt2.a.setChecked(localf.k);
      return localView2;
      localt2 = (t)paramView.getTag();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.s
 * JD-Core Version:    0.6.2
 */