package com.avg.tuneup.battery;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

class n
  implements SeekBar.OnSeekBarChangeListener
{
  n(l paraml)
  {
  }

  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      c.e(this.a.a, paramInt);
  }

  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.n
 * JD-Core Version:    0.6.2
 */