import android.content.pm.IPackageDataObserver.Stub;
import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicBoolean;

final class bxa extends IPackageDataObserver.Stub
{
  bxa(AtomicBoolean paramAtomicBoolean, Object paramObject)
  {
  }

  public final void onRemoveCompleted(String paramString, boolean paramBoolean)
    throws RemoteException
  {
    this.a.set(paramBoolean);
    synchronized (this.b)
    {
      this.b.notify();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxa
 * JD-Core Version:    0.6.2
 */