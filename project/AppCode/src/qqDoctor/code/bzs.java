import android.os.IInterface;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

public abstract interface bzs extends IInterface
{
  public abstract ArrayList<bzo> a()
    throws RemoteException;

  public abstract ArrayList<bzo> a(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean a(String paramString)
    throws RemoteException;

  public abstract boolean a(String paramString, boolean paramBoolean)
    throws RemoteException;

  public abstract boolean a(List<String> paramList)
    throws RemoteException;

  public abstract boolean a(List<String> paramList, boolean paramBoolean)
    throws RemoteException;

  public abstract ArrayList<bzo> b(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean b()
    throws RemoteException;

  public abstract boolean c()
    throws RemoteException;

  public abstract boolean d()
    throws RemoteException;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzs
 * JD-Core Version:    0.6.2
 */