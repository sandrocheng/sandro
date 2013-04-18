package com.keniu.security.protection;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;

final class d
  implements MediaPlayer.OnErrorListener
{
  d(a parama)
  {
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    try
    {
      a.a(this.a).release();
      return false;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.d
 * JD-Core Version:    0.6.2
 */