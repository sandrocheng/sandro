package org.antivirus.tuneup;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import java.util.Calendar;

final class ac
  implements DatePickerDialog.OnDateSetListener
{
  ac(DataPlanSettingsActivity paramDataPlanSettingsActivity)
  {
  }

  public final void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(paramInt1, paramInt2, paramInt3);
    DataPlanSettingsActivity.a(this.a, localCalendar);
    DataPlanSettingsActivity.a(this.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ac
 * JD-Core Version:    0.6.2
 */