import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import org.json.JSONException;

public abstract class bzx extends Binder
  implements bzu
{
  public static bzu a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.tencent.tmsecurelite.IScanListener");
      if ((localIInterface != null) && ((localIInterface instanceof bzu)))
        localObject = (bzu)localIInterface;
      else
        localObject = new bzw(paramIBinder);
    }
  }

  protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    case 9:
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    }
    while (true)
    {
      return true;
      a();
      paramParcel2.writeNoException();
      continue;
      int j = paramParcel1.readInt();
      try
      {
        localbzo3 = new bzo(paramParcel1);
        a(j, localbzo3);
        paramParcel2.writeNoException();
      }
      catch (JSONException localJSONException2)
      {
        while (true)
        {
          localJSONException2.printStackTrace();
          bzo localbzo3 = null;
        }
      }
      int i = paramParcel1.readInt();
      try
      {
        bzo localbzo1 = new bzo(paramParcel1);
        localbzo2 = localbzo1;
        b(i, localbzo2);
        paramParcel2.writeNoException();
      }
      catch (JSONException localJSONException1)
      {
        while (true)
        {
          localJSONException1.printStackTrace();
          bzo localbzo2 = null;
        }
      }
      b();
      paramParcel2.writeNoException();
      continue;
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      continue;
      c();
      paramParcel2.writeNoException();
      continue;
      d();
      paramParcel2.writeNoException();
      continue;
      e();
      paramParcel2.writeNoException();
      continue;
      a(bzo.a(paramParcel1));
      paramParcel2.writeNoException();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzx
 * JD-Core Version:    0.6.2
 */