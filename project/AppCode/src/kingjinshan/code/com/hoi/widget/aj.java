package com.hoi.widget;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class aj
  implements SeekBar.OnSeekBarChangeListener
{
  aj(ai paramai, String paramString)
  {
  }

  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
  }

  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    if (this.a == null);
    while (true)
    {
      return;
      int i = ai.a(this.b, paramSeekBar.getProgress());
      if (ai.a(this.b, Integer.valueOf(i)))
      {
        SharedPreferences.Editor localEditor = ai.a(this.b).edit();
        localEditor.putInt(this.a, i);
        localEditor.commit();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.aj
 * JD-Core Version:    0.6.2
 */