package com.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.Settings.System;
import com.antivirus.ui.antitheft.StopShoutActivity;
import com.avg.toolkit.f.a;

class m
  implements Runnable
{
  m(k paramk, Context paramContext)
  {
  }

  public void run()
  {
    this.b.a();
    while (true)
    {
      int i;
      try
      {
        String str1 = Settings.System.getString(this.a.getContentResolver(), "ringtone");
        AudioManager localAudioManager = (AudioManager)this.a.getSystemService("audio");
        if (localAudioManager != null)
        {
          k.a(this.b, localAudioManager.getMode());
          k.a(this.b, localAudioManager.isSpeakerphoneOn());
          localAudioManager.setMode(2);
          localAudioManager.setSpeakerphoneOn(true);
          localAudioManager.setRingerMode(2);
          localAudioManager.setStreamVolume(3, localAudioManager.getStreamMaxVolume(3), 0);
        }
        try
        {
          this.b.b = new MediaPlayer();
          this.b.b.setDataSource(this.a, Uri.parse(str1));
          this.b.b.prepare();
          i = 0;
          if ((i < 5) && (this.b.b != null))
          {
            long l = 0L;
            if (this.b.b != null)
              l = this.b.b.getDuration();
            if (this.b.b == null)
              break label456;
            this.b.b.start();
            this.b.b.setOnCompletionListener(new n(this, localAudioManager));
            if (i == 0)
            {
              this.b.a(this.a);
              Intent localIntent = new Intent(this.a, StopShoutActivity.class);
              localIntent.setFlags(872415232);
              this.a.startActivity(localIntent);
            }
            Thread.sleep(l + 500L);
          }
        }
        catch (Exception localException2)
        {
          String str2 = RingtoneManager.getValidRingtoneUri(this.a).toString();
          this.b.b.release();
          this.b.b = new MediaPlayer();
          this.b.b.setDataSource(this.a, Uri.parse(str2));
          this.b.b.prepare();
          continue;
        }
      }
      catch (Exception localException1)
      {
        a.a(localException1);
        return;
        k.c(this.b);
        if (this.b.b == null)
          continue;
        this.b.b.release();
        this.b.b = null;
        continue;
      }
      finally
      {
        if (this.b.b != null)
        {
          this.b.b.release();
          this.b.b = null;
        }
      }
      label456: i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.m
 * JD-Core Version:    0.6.2
 */