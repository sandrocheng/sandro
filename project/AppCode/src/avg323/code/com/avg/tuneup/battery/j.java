package com.avg.tuneup.battery;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.provider.Settings.System;
import android.view.View;
import android.widget.CheckBox;
import android.widget.SeekBar;
import com.avg.a.e;
import com.avg.ui.general.a.a;

class j
  implements DialogInterface.OnClickListener
{
  j(c paramc, View paramView)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = ((CheckBox)this.a.findViewById(e.cb_use_ringtone)).isChecked();
    int i;
    if (bool)
    {
      i = 1;
      Settings.System.putInt(c.o(this.b).getApplicationContext().getContentResolver(), "notifications_use_ring_volume", i);
      SeekBar localSeekBar1 = (SeekBar)this.a.findViewById(e.sb_ringtone);
      c.a(this.b, 2, localSeekBar1.getProgress());
      if (!bool)
        break label181;
      c.a(this.b, 5, localSeekBar1.getProgress());
    }
    while (true)
    {
      SeekBar localSeekBar3 = (SeekBar)this.a.findViewById(e.sb_alarm);
      c.a(this.b, 4, localSeekBar3.getProgress());
      SeekBar localSeekBar4 = (SeekBar)this.a.findViewById(e.sb_media);
      c.a(this.b, 3, localSeekBar4.getProgress());
      SeekBar localSeekBar5 = (SeekBar)this.a.findViewById(e.sb_system);
      c.a(this.b, 1, localSeekBar5.getProgress());
      return;
      i = 0;
      break;
      label181: SeekBar localSeekBar2 = (SeekBar)this.a.findViewById(e.sb_notification);
      c.a(this.b, 5, localSeekBar2.getProgress());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.j
 * JD-Core Version:    0.6.2
 */