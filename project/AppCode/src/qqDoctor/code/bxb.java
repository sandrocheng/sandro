import android.content.pm.IPackageStatsObserver.Stub;
import android.content.pm.PackageStats;
import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class bxb extends IPackageStatsObserver.Stub
{
  bxb(AtomicReference paramAtomicReference, Object paramObject)
  {
  }

  public final void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
    throws RemoteException
  {
    this.a.set(paramPackageStats);
    synchronized (this.b)
    {
      this.b.notify();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxb
 * JD-Core Version:    0.6.2
 */