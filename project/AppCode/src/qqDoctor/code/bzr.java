import android.os.IInterface;
import android.os.RemoteException;
import java.util.ArrayList;

public abstract interface bzr extends IInterface
{
  public abstract int a()
    throws RemoteException;

  public abstract ArrayList<bzo> a(int paramInt)
    throws RemoteException;

  public abstract void a(int paramInt1, int paramInt2, boolean paramBoolean)
    throws RemoteException;

  public abstract boolean a(int paramInt1, int paramInt2)
    throws RemoteException;

  public abstract boolean a(String paramString1, String paramString2, int paramInt)
    throws RemoteException;

  public abstract int b()
    throws RemoteException;

  public abstract void b(int paramInt)
    throws RemoteException;

  public abstract void b(int paramInt1, int paramInt2)
    throws RemoteException;

  public abstract void b(int paramInt1, int paramInt2, boolean paramBoolean)
    throws RemoteException;

  public abstract int c()
    throws RemoteException;

  public abstract ArrayList<bzo> c(int paramInt)
    throws RemoteException;

  public abstract void c(int paramInt1, int paramInt2)
    throws RemoteException;

  public abstract void d(int paramInt)
    throws RemoteException;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzr
 * JD-Core Version:    0.6.2
 */