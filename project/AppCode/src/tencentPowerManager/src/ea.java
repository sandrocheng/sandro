import android.os.Process;
import com.tencent.powermanager.view.PowerManagerView;

public final class ea
  implements Runnable
{
  public ea(PowerManagerView paramPowerManagerView)
  {
  }

  public final void run()
  {
    Process.setThreadPriority(19);
    try
    {
      Thread.sleep(150L);
      PowerManagerView.d(this.a).a(new eb(this));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ea
 * JD-Core Version:    0.6.2
 */