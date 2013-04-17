import android.content.Context;
import android.os.Environment;
import com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType;
import com.tencent.tccsync.RemoteSync.SyncType;
import com.tencent.tccsync.TccRemoteSyncMapPreCount;
import java.util.concurrent.atomic.AtomicInteger;

public final class sd
  implements Runnable
{
  public sd(rx paramrx)
  {
  }

  public final void run()
  {
    Context localContext;
    String str1;
    int i;
    label71: int j;
    if (bd.a(this.a.a, System.currentTimeMillis(), cw.d().f()))
    {
      localContext = this.a.a;
      di.b = 0;
      if (!cw.d().b())
        break label124;
      str1 = cw.d().f();
      i = 0;
      if (str1 != null)
      {
        boolean bool1 = "".equals(str1);
        i = 0;
        if (!bool1)
          break label139;
      }
      j = di.b;
      if (i != 0)
        break label322;
      ov.a().a(this.a.a, this.a.a.getString(2131428832));
      bd.a(ITccSyncDbAdapter.DbAdapterType.CONTACT.toInt(), ITccSyncDbAdapter.DbAdapterType.CONTACT.toInt(), System.currentTimeMillis());
    }
    while (true)
    {
      return;
      label124: str1 = bl.f().a(ca.a.b);
      break;
      label139: int k;
      label153: boolean bool2;
      label161: String str2;
      label177: AtomicInteger localAtomicInteger1;
      AtomicInteger localAtomicInteger2;
      AtomicInteger localAtomicInteger3;
      int m;
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        k = 1;
        if (k == 0)
          break label276;
        bool2 = true;
        if (!cw.d().b())
          break label282;
        str2 = de.c(bool2);
        i = 0;
        if (str2 == null)
          break label71;
        TccRemoteSyncMapPreCount localTccRemoteSyncMapPreCount = new TccRemoteSyncMapPreCount();
        localAtomicInteger1 = new AtomicInteger();
        localAtomicInteger2 = new AtomicInteger();
        localAtomicInteger3 = new AtomicInteger();
        m = localTccRemoteSyncMapPreCount.getLocalChangeCount(cu.a(localContext, ITccSyncDbAdapter.DbAdapterType.CONTACT, RemoteSync.SyncType.SYNC_NONE, null), str2, localAtomicInteger1, localAtomicInteger2, localAtomicInteger3);
        if (m == 0)
          break label293;
        dk.b("StatisticsUtil", "syncCollectLocalContactChange(), map fail: Fail to collect local changed contact num");
      }
      while (true)
      {
        i = 0;
        if (m != 0)
          break;
        i = 1;
        break;
        k = 0;
        break label153;
        label276: bool2 = false;
        break label161;
        label282: str2 = de.a(str1, bool2);
        break label177;
        label293: di.b = localAtomicInteger1.get() + localAtomicInteger2.get() + localAtomicInteger3.get();
        localAtomicInteger2.get();
      }
      label322: if (j > 0)
      {
        ov.a().a(this.a.a, this.a.a.getString(2131428833));
        bd.a(ITccSyncDbAdapter.DbAdapterType.CONTACT.toInt(), ITccSyncDbAdapter.DbAdapterType.CONTACT.toInt(), System.currentTimeMillis());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sd
 * JD-Core Version:    0.6.2
 */