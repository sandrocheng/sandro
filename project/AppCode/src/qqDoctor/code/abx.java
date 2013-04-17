import android.app.ActivityManager.RunningTaskInfo;
import android.os.Handler;
import android.os.Message;
import java.util.List;

final class abx
  implements Runnable
{
  abx(abv paramabv)
  {
  }

  public final void run()
  {
    int i = 0;
    while (true)
      if (!abv.a(this.a))
        try
        {
          Thread.sleep(500L);
          label18: if (i > 0)
          {
            if (abv.b(this.a))
            {
              List localList1 = abv.c(this.a);
              List localList2 = abv.b(this.a, localList1);
              if ((localList2 != null) && (localList2.size() > 0))
              {
                Message localMessage2 = abv.d(this.a).obtainMessage(0);
                localMessage2.obj = localList2;
                abv.d(this.a).sendMessage(localMessage2);
              }
            }
            i = 0;
          }
          i++;
          if (abv.e(this.a))
          {
            ActivityManager.RunningTaskInfo localRunningTaskInfo = abv.f(this.a);
            if (localRunningTaskInfo != null)
            {
              Message localMessage1 = abv.d(this.a).obtainMessage(1);
              localMessage1.obj = localRunningTaskInfo;
              abv.d(this.a).sendMessage(localMessage1);
            }
          }
        }
        catch (Exception localException)
        {
          break label18;
        }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abx
 * JD-Core Version:    0.6.2
 */