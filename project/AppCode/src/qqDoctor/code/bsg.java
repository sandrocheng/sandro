import android.app.TimePickerDialog.OnTimeSetListener;
import android.content.SharedPreferences.Editor;
import android.widget.TimePicker;

final class bsg
  implements TimePickerDialog.OnTimeSetListener
{
  bsg(bsb parambsb)
  {
  }

  public final void onTimeSet(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    this.a.c = paramInt1;
    this.a.d = paramInt2;
    bsb.a(this.a).c.putInt("scanTimeHour", paramInt1).commit();
    bsb.a(this.a).c.putInt("scanTimeMini", paramInt2).commit();
    bsb.a(this.a).c.putBoolean("scan_time_modified", true).commit();
    bsb.b(this.a);
    this.a.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsg
 * JD-Core Version:    0.6.2
 */