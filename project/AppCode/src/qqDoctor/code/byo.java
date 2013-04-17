import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class byo
{
  private static int a = 41;
  private static int b = 43;
  private IBinder c;

  public byo()
  {
    if (di.a("android.app.admin.IDevicePolicyManager$Stub"))
    {
      a = di.a("TRANSACTION_packageHasActiveAdmins", 41);
      b = di.a("TRANSACTION_removeActiveAdmin", 43);
      this.c = btm.a("device_policy");
    }
  }

  public final boolean a(String paramString)
  {
    IBinder localIBinder = this.c;
    boolean bool = false;
    Parcel localParcel1;
    Parcel localParcel2;
    if (localIBinder != null)
    {
      localParcel1 = Parcel.obtain();
      localParcel2 = Parcel.obtain();
    }
    try
    {
      localParcel1.writeInterfaceToken("android.app.admin.IDevicePolicyManager");
      localParcel1.writeString(paramString);
      this.c.transact(a, localParcel1, localParcel2, 0);
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
        localParcel1.recycle();
        localParcel2.recycle();
        bool = false;
      }
    }
    finally
    {
      localParcel1.recycle();
      localParcel2.recycle();
    }
  }

  public final boolean b(String paramString)
  {
    ArrayList localArrayList;
    Iterator localIterator;
    if (this.c != null)
    {
      Intent localIntent = new Intent("android.app.action.DEVICE_ADMIN_ENABLED");
      localIntent.setPackage(paramString);
      List localList = TMSApplication.getApplicaionContext().getPackageManager().queryBroadcastReceivers(localIntent, 0);
      if (localList.size() > 0)
      {
        localArrayList = new ArrayList();
        localIterator = localList.iterator();
      }
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localArrayList.size() > 0)
          ScriptHelper.runScriptAsRoot(localArrayList);
        return false;
      }
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      if (localResolveInfo.activityInfo.enabled)
      {
        String str1 = localResolveInfo.activityInfo.packageName;
        String str2 = localResolveInfo.activityInfo.name;
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = "device_policy";
        arrayOfObject[1] = Integer.valueOf(b);
        arrayOfObject[2] = str1;
        arrayOfObject[3] = str2;
        localArrayList.add(String.format("service call %s %d i32 1 s16 %s s16 %s", arrayOfObject));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byo
 * JD-Core Version:    0.6.2
 */