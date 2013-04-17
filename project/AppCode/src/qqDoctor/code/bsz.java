import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;

final class bsz extends Thread
{
  bsz(btl parambtl)
  {
  }

  public final void run()
  {
    if (bsx.c())
    {
      TMSApplication.getApplicaionContext().unregisterReceiver(bsx.d());
      bsx.a(false);
    }
    try
    {
      Thread.sleep(10000L);
      if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportChannelInfo() == 0)
      {
        btl localbtl = this.a;
        localbtl.b.putBoolean(localbtl.a + "." + "reportlc", true);
        localbtl.b.commit();
        bsx.e();
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        localInterruptedException.printStackTrace();
        continue;
        if (!bsx.c())
        {
          IntentFilter localIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
          TMSApplication.getApplicaionContext().registerReceiver(bsx.d(), localIntentFilter);
          bsx.a(true);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsz
 * JD-Core Version:    0.6.2
 */