import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;

final class awq extends Handler
{
  awq(awj.a parama)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = this.a.a.getCurrentPosition();
    int j = this.a.a.getDuration();
    awj.a.a(this.a).setText(i / 1000 + "/" + j / 1000 + "s");
    if (j > 0)
    {
      long l = i * awj.a.b(this.a).getMax() / j;
      awj.a.b(this.a).setProgress((int)l);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awq
 * JD-Core Version:    0.6.2
 */