package com.avg.ui.license.qrreader.general;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class b
  implements MediaPlayer.OnCompletionListener
{
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.seekTo(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.b
 * JD-Core Version:    0.6.2
 */