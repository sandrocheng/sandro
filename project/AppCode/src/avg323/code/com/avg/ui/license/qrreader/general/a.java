package com.avg.ui.license.qrreader.general;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import com.avg.ui.general.f;
import java.io.IOException;

final class a
{
  private final Activity a;
  private MediaPlayer b;
  private boolean c;
  private boolean d;

  a(Activity paramActivity)
  {
    this.a = paramActivity;
    this.b = null;
    a();
  }

  private static MediaPlayer a(Context paramContext)
  {
    MediaPlayer localMediaPlayer = new MediaPlayer();
    localMediaPlayer.setAudioStreamType(3);
    localMediaPlayer.setOnCompletionListener(new b());
    AssetFileDescriptor localAssetFileDescriptor = paramContext.getResources().openRawResourceFd(f.beep);
    try
    {
      localMediaPlayer.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
      localAssetFileDescriptor.close();
      localMediaPlayer.setVolume(0.1F, 0.1F);
      localMediaPlayer.prepare();
      return localMediaPlayer;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localIOException);
        localMediaPlayer.release();
        localMediaPlayer = null;
      }
    }
  }

  private static boolean a(SharedPreferences paramSharedPreferences, Context paramContext)
  {
    boolean bool1 = paramSharedPreferences.getBoolean("preferences_play_beep", true);
    if ((bool1) && (((AudioManager)paramContext.getSystemService("audio")).getRingerMode() != 2));
    for (boolean bool2 = false; ; bool2 = bool1)
      return bool2;
  }

  void a()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.a);
    this.c = a(localSharedPreferences, this.a);
    this.d = localSharedPreferences.getBoolean("preferences_vibrate", false);
    if ((this.c) && (this.b == null))
    {
      this.a.setVolumeControlStream(3);
      this.b = a(this.a);
    }
  }

  void b()
  {
    if ((this.c) && (this.b != null))
      this.b.start();
    if (this.d)
      ((Vibrator)this.a.getSystemService("vibrator")).vibrate(200L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.a
 * JD-Core Version:    0.6.2
 */