package com.avast.android.mobilesecurity.ui.widget;

import android.annotation.TargetApi;
import android.app.DatePickerDialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import java.lang.reflect.Field;

class h
  implements View.OnClickListener
{
  h(DayButtonRow paramDayButtonRow)
  {
  }

  @TargetApi(11)
  public void onClick(View paramView)
  {
    DatePickerDialog localDatePickerDialog;
    if (Build.VERSION.SDK_INT < 11)
    {
      i locali = new i(this);
      localDatePickerDialog = new DatePickerDialog(this.a.getContext(), locali, 2010, 1, DayButtonRow.a(this.a));
      localDatePickerDialog.setTitle(this.a.getContext().getString(2131493753));
    }
    while (true)
    {
      int j;
      Field localField1;
      String str1;
      int m;
      try
      {
        Field[] arrayOfField1 = localDatePickerDialog.getClass().getDeclaredFields();
        int i = arrayOfField1.length;
        j = 0;
        if (j < i)
        {
          localField1 = arrayOfField1[j];
          if ((localField1.getType() == null) || (localField1.getType().getName() == null))
            break label382;
          str1 = localField1.getType().getName().toLowerCase();
          if (!str1.endsWith(".datepicker"))
            break label295;
          localField1.setAccessible(true);
          View localView = (View)localField1.get(localDatePickerDialog);
          Field[] arrayOfField2 = localView.getClass().getDeclaredFields();
          int k = arrayOfField2.length;
          m = 0;
          if (m >= k)
            break label382;
          Field localField2 = arrayOfField2[m];
          if ((localField2.getName() == null) || (localField2.getType() == null) || (localField2.getType().getName() == null))
            break label388;
          String str2 = localField2.getName().toLowerCase();
          if ((!localField2.getType().getName().toLowerCase().endsWith(".numberpicker")) || ((!str2.contains("month")) && (!str2.contains("year"))))
            break label388;
          localField2.setAccessible(true);
          ((View)localField2.get(localView)).setVisibility(8);
        }
      }
      catch (Exception localException)
      {
        localDatePickerDialog.show();
      }
      while (true)
      {
        return;
        label295: if (!str1.endsWith(".dateformat"))
          break;
        localField1.setAccessible(true);
        localField1.set(localDatePickerDialog, new j(this));
        break;
        k localk = new k(this);
        new m(this.a.getContext(), localk, DayButtonRow.a(this.a), 1, 28, this.a.getContext().getString(2131493753)).show();
      }
      label382: j++;
      continue;
      label388: m++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.h
 * JD-Core Version:    0.6.2
 */