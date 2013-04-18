package com.ijinshan.kpref;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings.System;
import android.widget.SeekBar;

final class ab extends ContentObserver
{
  ab(aa paramaa, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    if (aa.a(this.a) != null)
    {
      int i = Settings.System.getInt(aa.b(this.a).getContentResolver(), Settings.System.VOLUME_SETTINGS[aa.c(this.a)], -1);
      if (i >= 0)
        aa.a(this.a).setProgress(i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.ab
 * JD-Core Version:    0.6.2
 */