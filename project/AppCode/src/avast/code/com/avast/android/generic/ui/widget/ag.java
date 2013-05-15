package com.avast.android.generic.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;
import com.avast.android.generic.d;
import com.avast.android.generic.d.e;

class ag
  implements CompoundButton.OnCheckedChangeListener
{
  ag(WeekDaysRow paramWeekDaysRow)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    int i = 0;
    if (WeekDaysRow.a(this.a));
    while (true)
    {
      return;
      int j = 1;
      for (int k = 0; k < 7; k++)
      {
        if (WeekDaysRow.b(this.a)[k].isChecked())
          i += j;
        j *= 2;
      }
      this.a.e().a(this.a.g, d.b(i));
      WeekDaysRow.a(this.a, i);
      if (WeekDaysRow.c(this.a) != null)
        WeekDaysRow.c(this.a).a(this.a, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.ag
 * JD-Core Version:    0.6.2
 */