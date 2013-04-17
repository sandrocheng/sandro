import android.content.Context;
import android.content.res.Resources;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.widget.TaskManagerWidgetProvider;
import com.tencent.qqpimsecure.widget.WidgetUpdateBoradcastReceiver;
import com.tencent.tmsecure.common.TMSApplication;

public final class bsp extends Thread
{
  public bsp(TaskManagerWidgetProvider paramTaskManagerWidgetProvider, Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      zk localzk = new zk(this.a, null);
      zo.a().e();
      zk.a locala = localzk.a(false);
      TMSApplication.getApplicaionContext();
      WidgetUpdateBoradcastReceiver.a(this.b.a());
      if (locala.d)
        ha.a(this.a, 2131429690);
      if (locala.c > 0L)
        ha.a(this.a, QQPimApplication.a().getResources().getString(2131428683) + a.c(locala.c));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsp
 * JD-Core Version:    0.6.2
 */