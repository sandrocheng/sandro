import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;

final class aws extends Handler
{
  aws(awj.b paramb)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = this.a.a.getCurrentPosition();
    int j = this.a.a.getDuration();
    if (j > 0)
    {
      long l = i * awj.b.a(this.a).getMax() / j;
      awj.b.a(this.a).setProgress((int)l);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aws
 * JD-Core Version:    0.6.2
 */