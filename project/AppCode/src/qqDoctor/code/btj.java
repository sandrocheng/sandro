import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class btj
{
  public String a;
  public String b;
  public int c;
  private int d;

  public btj(String paramString)
  {
    this.b = paramString;
    try
    {
      IBinder localIBinder = btm.a(this.b);
      if (localIBinder != null)
      {
        this.a = localIBinder.getInterfaceDescriptor();
        di.a(this.a + "$Stub");
        di.a("TRANSACTION_call", 2);
        this.d = di.a("TRANSACTION_endCall", 5);
        this.c = di.a("TRANSACTION_cancelMissedCallsNotification", 13);
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final boolean a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken(this.a);
      btm.a(this.b).transact(this.d, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      bool = false;
      if (i != 0)
        bool = true;
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        localRemoteException.printStackTrace();
        localParcel2.recycle();
        localParcel1.recycle();
        bool = false;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        localParcel2.recycle();
        localParcel1.recycle();
        boolean bool = false;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btj
 * JD-Core Version:    0.6.2
 */