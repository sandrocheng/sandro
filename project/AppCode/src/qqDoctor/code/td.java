import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;

final class td extends Thread
{
  td(sz paramsz)
  {
  }

  public final void run()
  {
    int i = 0;
    if (this.a.a.j);
    while (true)
    {
      try
      {
        Message localMessage = this.a.a.l.obtainMessage(1, Integer.valueOf(0));
        this.a.a.l.sendMessage(localMessage);
        Thread.sleep(1000L);
        if (i != 0)
          break label89;
        ((ProgressDialog)this.a.a.g).startProgressAnimation();
        j = 1;
        i = j;
        break;
        return;
      }
      catch (Exception localException)
      {
      }
      break;
      label89: int j = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     td
 * JD-Core Version:    0.6.2
 */