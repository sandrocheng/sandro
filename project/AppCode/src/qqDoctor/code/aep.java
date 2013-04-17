import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity.a;

public final class aep extends Thread
{
  public aep(SyncQQAccountLoginActivity.a parama, String paramString)
  {
  }

  public final void run()
  {
    int i = SyncQQAccountLoginActivity.a.n(this.b).a(this.a, true);
    if (i == 0)
    {
      Message localMessage2 = SyncQQAccountLoginActivity.a.o(this.b).obtainMessage(100000);
      SyncQQAccountLoginActivity.a.o(this.b).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = SyncQQAccountLoginActivity.a.o(this.b).obtainMessage(100001, Integer.valueOf(i));
      SyncQQAccountLoginActivity.a.o(this.b).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aep
 * JD-Core Version:    0.6.2
 */