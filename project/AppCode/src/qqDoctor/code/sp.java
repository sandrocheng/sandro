import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.tmsecure.module.optimize.OptimizeManager;

final class sp extends Thread
{
  sp(so paramso)
  {
  }

  public final void run()
  {
    try
    {
      so.b(this.a).closeProcess(so.a(this.a), false, false);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        new StringBuilder("error when asynKillAheadProcess run, NameNotFoundException e: ").append(localNameNotFoundException).toString();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sp
 * JD-Core Version:    0.6.2
 */