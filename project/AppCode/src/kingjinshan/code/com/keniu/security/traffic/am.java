package com.keniu.security.traffic;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import java.text.DecimalFormat;

final class am extends ArrayAdapter
{
  am(TrafficFireWallMainActivity paramTrafficFireWallMainActivity, Context paramContext, f[] paramArrayOff, LayoutInflater paramLayoutInflater, DecimalFormat paramDecimalFormat)
  {
    super(paramContext, 2130903217, 2131231384, paramArrayOff);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    ap localap1;
    f localf;
    if (paramView == null)
    {
      localView = this.a.inflate(2130903217, paramViewGroup, false);
      Log.d("DroidWall", ">> inflate(" + localView + ")");
      ap localap2 = new ap();
      ap.a(localap2, (CheckBox)localView.findViewById(2131231386));
      ap.b(localap2, (CheckBox)localView.findViewById(2131231383));
      ap.a(localap2, (TextView)localView.findViewById(2131231384));
      ap.b(localap2, (TextView)localView.findViewById(2131231385));
      ap.a(localap2, (ImageView)localView.findViewById(2131231382));
      localView.setTag(localap2);
      localap1 = localap2;
      localf = this.c.a[paramInt];
      localf.h.setCallback(null);
      ap.a(localap1, localf);
      if (TrafficFireWallMainActivity.e(this.c))
      {
        if (TrafficFireWallMainActivity.f(this.c) != localf.a)
          break label402;
        ap.a(localap1).setTextColor(Color.argb(200, 245, 184, 0));
      }
    }
    while (true)
    {
      ap.a(localap1).setText(localf.toString());
      TextView localTextView = ap.b(localap1);
      String str = this.c.getString(2131427986);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.b.format(localf.m);
      localTextView.setText(String.format(str, arrayOfObject));
      ap.c(localap1).setImageDrawable(localf.h);
      CheckBox localCheckBox1 = ap.d(localap1);
      localCheckBox1.setTag(localf);
      localCheckBox1.setChecked(localf.d);
      localCheckBox1.setClickable(true);
      CheckBox localCheckBox2 = ap.e(localap1);
      localCheckBox2.setTag(localf);
      localCheckBox2.setChecked(localf.c);
      localCheckBox2.setClickable(true);
      ap.e(localap1).setOnCheckedChangeListener(this.c);
      ap.d(localap1).setOnCheckedChangeListener(this.c);
      return localView;
      localap1 = (ap)paramView.getTag();
      localView = paramView;
      break;
      label402: ap.a(localap1).setTextColor(this.c.getResources().getColor(2131296353));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.am
 * JD-Core Version:    0.6.2
 */