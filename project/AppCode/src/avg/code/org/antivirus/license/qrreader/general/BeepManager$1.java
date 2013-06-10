package org.antivirus.license.qrreader.general;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class BeepManager$1
  implements MediaPlayer.OnCompletionListener
{
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.seekTo(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.BeepManager.1
 * JD-Core Version:    0.6.2
 */