package org.antivirus.tuneup;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class s
  implements SeekBar.OnSeekBarChangeListener
{
  s(q paramq)
  {
  }

  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      BatterySaveSettingsActivity.d(this.a.a, paramInt);
  }

  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.s
 * JD-Core Version:    0.6.2
 */