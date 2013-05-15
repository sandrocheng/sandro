package com.avast.android.generic.ui.widget;

import android.app.TimePickerDialog.OnTimeSetListener;
import android.widget.TimePicker;

class ae
  implements TimePickerDialog.OnTimeSetListener
{
  ae(ad paramad)
  {
  }

  public void onTimeSet(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    TimeButtonRow.a(this.a.b, paramInt2 + paramInt1 * 60, true, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.ae
 * JD-Core Version:    0.6.2
 */