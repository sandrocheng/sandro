package com.ijinshan.kinghelper.firewall;

import android.app.TimePickerDialog.OnTimeSetListener;
import android.widget.TimePicker;

final class ai
  implements TimePickerDialog.OnTimeSetListener
{
  ai(FirewallSettingTimeLanjie paramFirewallSettingTimeLanjie, boolean paramBoolean)
  {
  }

  public final void onTimeSet(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    int i = paramInt2 + paramInt1 * 60;
    FirewallSettingTimeLanjie.a(this.b, this.a, i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ai
 * JD-Core Version:    0.6.2
 */