package com.ijinshan.bootmanager.activity;

import android.widget.Button;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import com.ijinshan.bootmanager.a.a;
import java.util.List;

final class c
  implements RadioGroup.OnCheckedChangeListener
{
  c(AutoBootMangerActivity paramAutoBootMangerActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 2131230924:
    case 2131230925:
    }
    while (true)
    {
      return;
      if (AutoBootMangerActivity.a(this.a) != null)
      {
        AutoBootMangerActivity.a(this.a).a(AutoBootMangerActivity.b(this.a));
        AutoBootMangerActivity.a(this.a).notifyDataSetChanged();
      }
      if (AutoBootMangerActivity.b(this.a).size() != 0)
      {
        AutoBootMangerActivity.c(this.a).setText(this.a.getString(2131428754));
        this.a.c = i.a;
      }
      while (true)
      {
        if ((!AutoBootMangerActivity.g(this.a)) && (AutoBootMangerActivity.h(this.a)))
        {
          AutoBootMangerActivity.c(this.a).setText(this.a.getString(2131428755));
          this.a.c = i.b;
        }
        AutoBootMangerActivity.c(this.a).setVisibility(0);
        break;
        AutoBootMangerActivity.d(this.a).setText(this.a.getString(2131428746));
        AutoBootMangerActivity.e(this.a).setVisibility(4);
        AutoBootMangerActivity.f(this.a).setVisibility(4);
      }
      if (AutoBootMangerActivity.a(this.a) != null)
      {
        AutoBootMangerActivity.a(this.a).a(AutoBootMangerActivity.i(this.a));
        AutoBootMangerActivity.a(this.a).notifyDataSetChanged();
      }
      if ((AutoBootMangerActivity.i(this.a).size() == 0) && (AutoBootMangerActivity.h(this.a)))
      {
        AutoBootMangerActivity.d(this.a).setText(this.a.getString(2131428756));
        AutoBootMangerActivity.f(this.a).setVisibility(0);
        AutoBootMangerActivity.e(this.a).setVisibility(0);
      }
      AutoBootMangerActivity.c(this.a).setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.c
 * JD-Core Version:    0.6.2
 */