import android.content.pm.IPackageDataObserver.Stub;
import android.os.Handler;
import android.os.RemoteException;

final class bpz extends IPackageDataObserver.Stub
{
  bpz(bpu parambpu)
  {
  }

  public final void onRemoveCompleted(String paramString, boolean paramBoolean)
    throws RemoteException
  {
    this.a.a.sendEmptyMessage(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpz
 * JD-Core Version:    0.6.2
 */