package com.keniu.security.protection;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class c
  implements MediaPlayer.OnCompletionListener
{
  c(a parama)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    try
    {
      a.a(this.a).release();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.c
 * JD-Core Version:    0.6.2
 */