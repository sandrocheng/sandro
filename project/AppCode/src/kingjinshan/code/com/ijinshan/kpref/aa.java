package com.ijinshan.kpref;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings.System;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

public final class aa
  implements SeekBar.OnSeekBarChangeListener, Runnable
{
  private Context b;
  private Handler c = new Handler();
  private AudioManager d;
  private int e;
  private int f;
  private Ringtone g;
  private int h = -1;
  private SeekBar i;
  private ContentObserver j = new ab(this, this.c);

  public aa(VolumePreference paramVolumePreference, Context paramContext, SeekBar paramSeekBar, int paramInt)
  {
    this.b = paramContext;
    this.d = ((AudioManager)paramContext.getSystemService("audio"));
    this.e = paramInt;
    this.i = paramSeekBar;
    paramSeekBar.setMax(this.d.getStreamMaxVolume(this.e));
    this.f = this.d.getStreamVolume(this.e);
    paramSeekBar.setProgress(this.f);
    paramSeekBar.setOnSeekBarChangeListener(this);
    this.b.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.VOLUME_SETTINGS[this.e]), false, this.j);
    Uri localUri;
    if (this.e == 2)
      localUri = Settings.System.DEFAULT_RINGTONE_URI;
    while (true)
    {
      this.g = RingtoneManager.getRingtone(this.b, localUri);
      if (this.g != null)
        this.g.setStreamType(this.e);
      return;
      if (this.e == 5)
        localUri = Settings.System.DEFAULT_NOTIFICATION_URI;
      else
        localUri = Settings.System.DEFAULT_ALARM_ALERT_URI;
    }
  }

  private void a(SeekBar paramSeekBar)
  {
    paramSeekBar.setMax(this.d.getStreamMaxVolume(this.e));
    this.f = this.d.getStreamVolume(this.e);
    paramSeekBar.setProgress(this.f);
    paramSeekBar.setOnSeekBarChangeListener(this);
    this.b.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.VOLUME_SETTINGS[this.e]), false, this.j);
    Uri localUri;
    if (this.e == 2)
      localUri = Settings.System.DEFAULT_RINGTONE_URI;
    while (true)
    {
      this.g = RingtoneManager.getRingtone(this.b, localUri);
      if (this.g != null)
        this.g.setStreamType(this.e);
      return;
      if (this.e == 5)
        localUri = Settings.System.DEFAULT_NOTIFICATION_URI;
      else
        localUri = Settings.System.DEFAULT_ALARM_ALERT_URI;
    }
  }

  private void b(int paramInt)
  {
    this.h = paramInt;
    this.c.removeCallbacks(this);
    this.c.post(this);
  }

  private void d()
  {
    this.a.a(this);
    this.g.play();
  }

  private SeekBar e()
  {
    return this.i;
  }

  public final void a()
  {
    c();
    this.b.getContentResolver().unregisterContentObserver(this.j);
    this.i.setOnSeekBarChangeListener(null);
  }

  public final void a(int paramInt)
  {
    this.i.incrementProgressBy(paramInt);
    if ((this.g != null) && (!this.g.isPlaying()))
      d();
    b(this.i.getProgress());
  }

  public final void a(ac paramac)
  {
    if (this.h >= 0)
    {
      paramac.a = this.h;
      paramac.b = this.f;
    }
  }

  public final void b()
  {
    this.d.setStreamVolume(this.e, this.f, 0);
  }

  public final void b(ac paramac)
  {
    if (paramac.a != -1)
    {
      this.f = paramac.b;
      this.h = paramac.a;
      b(this.h);
    }
  }

  public final void c()
  {
    if (this.g != null)
      this.g.stop();
  }

  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (!paramBoolean);
    while (true)
    {
      return;
      b(paramInt);
    }
  }

  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    if ((this.g != null) && (!this.g.isPlaying()))
      d();
  }

  public final void run()
  {
    this.d.setStreamVolume(this.e, this.h, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.aa
 * JD-Core Version:    0.6.2
 */