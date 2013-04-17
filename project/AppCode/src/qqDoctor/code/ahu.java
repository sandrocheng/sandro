import android.content.Context;
import com.tencent.qqpimsecure.ui.activity.virus.VirusNotivicationDialog;

public final class ahu
  implements Runnable
{
  public ahu(Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      Thread.sleep(30000L);
      VirusNotivicationDialog.a(this.a);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahu
 * JD-Core Version:    0.6.2
 */