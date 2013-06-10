package org.antivirus.tuneup;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.provider.Settings.System;
import android.view.View;
import android.widget.CheckBox;
import android.widget.SeekBar;

final class o
  implements DialogInterface.OnClickListener
{
  o(BatterySaveSettingsActivity paramBatterySaveSettingsActivity, View paramView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = ((CheckBox)this.a.findViewById(2131230860)).isChecked();
    int i;
    if (bool)
    {
      i = 1;
      Settings.System.putInt(this.b.getApplicationContext().getContentResolver(), "notifications_use_ring_volume", i);
      SeekBar localSeekBar1 = (SeekBar)this.a.findViewById(2131230856);
      BatterySaveSettingsActivity.a(this.b, 2, localSeekBar1.getProgress());
      if (!bool)
        break label173;
      BatterySaveSettingsActivity.a(this.b, 5, localSeekBar1.getProgress());
    }
    while (true)
    {
      SeekBar localSeekBar3 = (SeekBar)this.a.findViewById(2131230858);
      BatterySaveSettingsActivity.a(this.b, 4, localSeekBar3.getProgress());
      SeekBar localSeekBar4 = (SeekBar)this.a.findViewById(2131230857);
      BatterySaveSettingsActivity.a(this.b, 3, localSeekBar4.getProgress());
      SeekBar localSeekBar5 = (SeekBar)this.a.findViewById(2131230859);
      BatterySaveSettingsActivity.a(this.b, 1, localSeekBar5.getProgress());
      return;
      i = 0;
      break;
      label173: SeekBar localSeekBar2 = (SeekBar)this.a.findViewById(2131230862);
      BatterySaveSettingsActivity.a(this.b, 5, localSeekBar2.getProgress());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.o
 * JD-Core Version:    0.6.2
 */