package com.keniu.security.protection;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.os.Handler;

public final class a
{
  private MediaPlayer a;
  private Context b;
  private boolean c;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void a()
  {
    AudioManager localAudioManager = (AudioManager)this.b.getSystemService("audio");
    localAudioManager.setRingerMode(2);
    int i = localAudioManager.getStreamVolume(3);
    int j = localAudioManager.getStreamMaxVolume(3);
    while (i < j)
    {
      localAudioManager.adjustStreamVolume(3, 1, 0);
      i = localAudioManager.getStreamVolume(3);
    }
    this.a = new MediaPlayer();
    this.a = MediaPlayer.create(this.b, 2131099648);
    try
    {
      if (this.a == null)
        this.a = MediaPlayer.create(this.b, RingtoneManager.getDefaultUri(1));
      if (this.a != null)
      {
        this.a.stop();
        this.c = false;
        this.a.setLooping(true);
        this.a.prepare();
        this.a.start();
        new Handler().postDelayed(new b(this), 30000L);
        this.a.setOnCompletionListener(new c(this));
        this.a.setOnErrorListener(new d(this));
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void b()
  {
    if ((this.a != null) && (!this.c))
    {
      this.a.stop();
      this.c = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.a
 * JD-Core Version:    0.6.2
 */