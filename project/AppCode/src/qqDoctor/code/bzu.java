import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

public abstract interface bzu extends IInterface
{
  public abstract void a()
    throws RemoteException;

  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(int paramInt, bzo parambzo)
    throws RemoteException;

  public abstract void a(List<bzo> paramList)
    throws RemoteException;

  public abstract void b()
    throws RemoteException;

  public abstract void b(int paramInt, bzo parambzo)
    throws RemoteException;

  public abstract void c()
    throws RemoteException;

  public abstract void d()
    throws RemoteException;

  public abstract void e()
    throws RemoteException;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzu
 * JD-Core Version:    0.6.2
 */