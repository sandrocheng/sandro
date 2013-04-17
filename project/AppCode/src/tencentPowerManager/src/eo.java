import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;

final class eo extends Thread
{
  eo(ex paramex)
  {
  }

  public final void run()
  {
    if (em.c())
    {
      TMSApplication.getApplicaionContext().unregisterReceiver(em.d());
      em.a(false);
    }
    try
    {
      Thread.sleep(10000L);
      if (((gg)ManagerCreator.getManager(gg.class)).a() == 0)
      {
        ex localex = this.a;
        localex.b.putBoolean(localex.a + "." + "reportlc", true);
        localex.b.commit();
        em.e();
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        localInterruptedException.printStackTrace();
        continue;
        if (!em.c())
        {
          IntentFilter localIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
          TMSApplication.getApplicaionContext().registerReceiver(em.d(), localIntentFilter);
          em.a(true);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     eo
 * JD-Core Version:    0.6.2
 */