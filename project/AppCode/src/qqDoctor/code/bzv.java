import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

public abstract interface bzv extends IInterface
{
  public abstract void a()
    throws RemoteException;

  public abstract void a(bzu parambzu, boolean paramBoolean)
    throws RemoteException;

  public abstract void a(List<String> paramList, bzu parambzu, boolean paramBoolean)
    throws RemoteException;

  public abstract void b()
    throws RemoteException;

  public abstract void b(bzu parambzu, boolean paramBoolean)
    throws RemoteException;

  public abstract void b(List<String> paramList, bzu parambzu, boolean paramBoolean)
    throws RemoteException;

  public abstract void c()
    throws RemoteException;

  public abstract void c(bzu parambzu, boolean paramBoolean)
    throws RemoteException;

  public abstract void d()
    throws RemoteException;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzv
 * JD-Core Version:    0.6.2
 */