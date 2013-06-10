package org.antivirus.license.qrreader.general;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import java.io.IOException;
import org.antivirus.core.Logger;

final class BeepManager
{
  private static final float BEEP_VOLUME = 0.1F;
  private static final long VIBRATE_DURATION = 200L;
  private final Activity activity;
  private MediaPlayer mediaPlayer;
  private boolean playBeep;
  private boolean vibrate;

  BeepManager(Activity paramActivity)
  {
    this.activity = paramActivity;
    this.mediaPlayer = null;
    updatePrefs();
  }

  private static MediaPlayer buildMediaPlayer(Context paramContext)
  {
    MediaPlayer localMediaPlayer = new MediaPlayer();
    localMediaPlayer.setAudioStreamType(3);
    localMediaPlayer.setOnCompletionListener(new BeepManager.1());
    AssetFileDescriptor localAssetFileDescriptor = paramContext.getResources().openRawResourceFd(2131034112);
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
        Logger.log(localIOException);
        localMediaPlayer.release();
        localMediaPlayer = null;
      }
    }
  }

  private static boolean shouldBeep(SharedPreferences paramSharedPreferences, Context paramContext)
  {
    boolean bool1 = paramSharedPreferences.getBoolean("preferences_play_beep", true);
    if ((bool1) && (((AudioManager)paramContext.getSystemService("audio")).getRingerMode() != 2));
    for (boolean bool2 = false; ; bool2 = bool1)
      return bool2;
  }

  final void playBeepSoundAndVibrate()
  {
    if ((this.playBeep) && (this.mediaPlayer != null))
      this.mediaPlayer.start();
    if (this.vibrate)
      ((Vibrator)this.activity.getSystemService("vibrator")).vibrate(200L);
  }

  final void updatePrefs()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.activity);
    this.playBeep = shouldBeep(localSharedPreferences, this.activity);
    this.vibrate = localSharedPreferences.getBoolean("preferences_vibrate", false);
    if ((this.playBeep) && (this.mediaPlayer == null))
    {
      this.activity.setVolumeControlStream(3);
      this.mediaPlayer = buildMediaPlayer(this.activity);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.BeepManager
 * JD-Core Version:    0.6.2
 */