package org.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.provider.Settings.System;
import android.text.TextUtils;
import org.antivirus.core.Logger;
import org.antivirus.ui.antitheft.StopShoutActivity;

final class l
  implements Runnable
{
  l(j paramj, Context paramContext)
  {
  }

  public final void run()
  {
    this.b.b = null;
    while (true)
    {
      int i;
      try
      {
        String str = Settings.System.getString(this.a.getContentResolver(), "ringtone");
        if (!TextUtils.isEmpty(str))
        {
          AudioManager localAudioManager = (AudioManager)this.a.getSystemService("audio");
          if (localAudioManager != null)
          {
            localAudioManager.setRingerMode(2);
            localAudioManager.setStreamVolume(3, localAudioManager.getStreamMaxVolume(3), 0);
          }
          this.b.b = new MediaPlayer();
          this.b.b.setDataSource(this.a, Uri.parse(str));
          this.b.b.prepare();
          i = 0;
          if ((i < 5) && (this.b.b != null))
          {
            long l = 0L;
            if (this.b.b != null)
              l = this.b.b.getDuration();
            if (this.b.b == null)
              break label332;
            this.b.b.start();
            if (i == 0)
            {
              Intent localIntent = new Intent(this.a, StopShoutActivity.class);
              localIntent.setFlags(872415232);
              this.a.startActivity(localIntent);
            }
            Thread.sleep(l + 500L);
            break label332;
          }
        }
        else
        {
          new ab(this.a).a();
        }
        return;
      }
      catch (Exception localException)
      {
        Logger.log(localException);
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
      label332: i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.l
 * JD-Core Version:    0.6.2
 */