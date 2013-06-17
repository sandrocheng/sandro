package com.antivirus.antitheft;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class n
  implements MediaPlayer.OnCompletionListener
{
  n(m paramm, AudioManager paramAudioManager)
  {
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (this.a != null)
    {
      this.a.setMode(k.a(this.b.b));
      this.a.setSpeakerphoneOn(k.b(this.b.b));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.n
 * JD-Core Version:    0.6.2
 */