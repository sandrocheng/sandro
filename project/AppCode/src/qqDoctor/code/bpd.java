import android.os.Environment;
import android.os.Handler;
import com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType;
import com.tencent.tccsync.RemoteSync.SyncType;
import com.tencent.tccsync.TccRemoteSyncMapPreCount;
import java.util.concurrent.atomic.AtomicInteger;

final class bpd
  implements Runnable
{
  bpd(bot parambot)
  {
  }

  public final void run()
  {
    boolean bool1 = true;
    bot localbot = this.a;
    ITccSyncDbAdapter.DbAdapterType localDbAdapterType = ITccSyncDbAdapter.DbAdapterType.CONTACT;
    String str1;
    Object localObject;
    if (cw.d().b())
    {
      str1 = cw.d().f();
      localObject = null;
      if (str1 != null)
      {
        boolean bool2 = "".equals(str1);
        localObject = null;
        if (!bool2)
          break label91;
      }
    }
    while (true)
    {
      bot.a(localbot, (co)localObject);
      bot.x(this.a).sendEmptyMessage(2003);
      return;
      str1 = bl.f().a(ca.a.b);
      break;
      label91: co localco = new co();
      boolean bool3;
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        bool3 = bool1;
        label114: if (!bool3)
          break label234;
      }
      AtomicInteger localAtomicInteger1;
      AtomicInteger localAtomicInteger2;
      AtomicInteger localAtomicInteger3;
      while (true)
      {
        String str2 = de.a(localDbAdapterType, bool1, str1);
        localObject = null;
        if (str2 == null)
          break;
        TccRemoteSyncMapPreCount localTccRemoteSyncMapPreCount = new TccRemoteSyncMapPreCount();
        localAtomicInteger1 = new AtomicInteger();
        localAtomicInteger2 = new AtomicInteger();
        localAtomicInteger3 = new AtomicInteger();
        if (localTccRemoteSyncMapPreCount.getLocalChangeCount(cu.a(de.b, localDbAdapterType, RemoteSync.SyncType.SYNC_NONE, null, null, false), str2, localAtomicInteger1, localAtomicInteger2, localAtomicInteger3) == 0)
          break label239;
        dk.b("StatisticsUtil", "syncCollectLocalDataChange(), map fail: Fail to collect local changed num. adapterType=" + localDbAdapterType);
        localObject = null;
        break;
        bool3 = false;
        break label114;
        label234: bool1 = false;
      }
      label239: localco.b = localAtomicInteger1.get();
      localco.c = localAtomicInteger3.get();
      localco.d = localAtomicInteger2.get();
      localco.f = 0;
      localco.e = 0;
      localco.a = localDbAdapterType;
      co.b();
      localObject = localco;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpd
 * JD-Core Version:    0.6.2
 */