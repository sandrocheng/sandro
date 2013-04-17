import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity.a;

public final class aez extends Thread
{
  public aez(SyncQQAccountLoginActivity.a parama, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    int i = SyncQQAccountLoginActivity.a.n(this.c).b(this.a, this.b);
    if (i == 0)
    {
      Message localMessage2 = SyncQQAccountLoginActivity.a.o(this.c).obtainMessage(100000);
      SyncQQAccountLoginActivity.a.o(this.c).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = SyncQQAccountLoginActivity.a.o(this.c).obtainMessage(100001, Integer.valueOf(i));
      SyncQQAccountLoginActivity.a.o(this.c).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aez
 * JD-Core Version:    0.6.2
 */