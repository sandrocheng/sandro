import android.content.pm.IPackageDataObserver.Stub;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;

final class bqg extends IPackageDataObserver.Stub
{
  bqg(bqf parambqf)
  {
  }

  public final void onRemoveCompleted(String paramString, boolean paramBoolean)
    throws RemoteException
  {
    if (bqb.v(this.a.a));
    while (true)
    {
      return;
      SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
      Iterator localIterator = bqb.M(this.a.a).iterator();
      while (localIterator.hasNext())
      {
        kw localkw = (kw)localIterator.next();
        localSoftwareManager.getAppInfo(localkw, 4);
        Message localMessage2 = new Message();
        localMessage2.what = 10;
        localMessage2.obj = localkw;
        bqb.R(this.a.a).sendMessage(localMessage2);
        try
        {
          Thread.sleep(50L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      Message localMessage1 = new Message();
      localMessage1.what = 9;
      bqb.R(this.a.a).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqg
 * JD-Core Version:    0.6.2
 */