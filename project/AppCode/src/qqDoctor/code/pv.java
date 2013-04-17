import android.content.pm.IPackageDataObserver;
import android.os.RemoteException;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;

final class pv extends Thread
{
  pv(pt parampt, IPackageDataObserver paramIPackageDataObserver)
  {
  }

  public final void run()
  {
    boolean bool = pt.a(this.b).clearAllCacheData();
    try
    {
      if (this.a != null)
        this.a.onRemoveCompleted(null, bool);
      pt.b(this.b);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pv
 * JD-Core Version:    0.6.2
 */