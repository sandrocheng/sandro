import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.tencent.tmsecure.common.ISDKClient;
import com.tencent.tmsecure.common.SDKClient;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

final class btx
{
  private static volatile btx a;
  private ArrayList<String> b = new ArrayList();
  private ConcurrentHashMap<String, ISDKClient> c = new ConcurrentHashMap();
  private Context d;
  private Looper e;
  private Handler f;
  private boolean g;

  private btx(Context paramContext)
  {
    this.d = paramContext;
    this.g = d();
    if (this.g)
    {
      HandlerThread localHandlerThread = new HandlerThread(btx.class.getName());
      localHandlerThread.start();
      this.e = localHandlerThread.getLooper();
      this.f = new Handler(this.e);
    }
  }

  public static btx a()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new btx(TMSApplication.getApplicaionContext());
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean a(ServiceInfo paramServiceInfo)
  {
    if ((paramServiceInfo != null) && (("com.tencent.qqpimsecure".equals(paramServiceInfo.packageName)) || ("com.tencent.qqphonebook".equals(paramServiceInfo.packageName))) && (!this.b.contains(paramServiceInfo.packageName)) && (paramServiceInfo.permission != null) && (paramServiceInfo.permission.equals("com.tencent.tmsecure.permission.RECEIVE_SMS")) && (paramServiceInfo.exported));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private ISDKClient b(ServiceInfo paramServiceInfo)
  {
    ISDKClient localISDKClient = (ISDKClient)this.c.get(paramServiceInfo.packageName);
    Object localObject1;
    bty localbty;
    if (localISDKClient == null)
    {
      Intent localIntent = new Intent();
      localIntent.setClassName(paramServiceInfo.packageName, paramServiceInfo.name);
      localObject1 = new Object();
      localbty = new bty(this, paramServiceInfo, localObject1);
      this.f.post(new btz(this, localIntent, localbty));
    }
    try
    {
      localObject1.wait(5000L);
      localISDKClient = localbty.b;
      return localISDKClient;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
    finally
    {
    }
  }

  private boolean d()
  {
    int i = 1;
    label96: label227: label229: label237: label239: label245: label249: 
    while (true)
    {
      int i3;
      int i4;
      int i1;
      int i2;
      int m;
      int n;
      int j;
      int k;
      boolean bool1;
      try
      {
        PackageInfo localPackageInfo = this.d.getPackageManager().getPackageInfo(this.d.getPackageName(), 4100);
        String[] arrayOfString = localPackageInfo.requestedPermissions;
        if (arrayOfString == null)
          break label201;
        i3 = arrayOfString.length;
        i4 = 0;
        break label194;
        PermissionInfo[] arrayOfPermissionInfo = localPackageInfo.permissions;
        if (arrayOfPermissionInfo == null)
          break label214;
        i1 = arrayOfPermissionInfo.length;
        i2 = 0;
        break label207;
        if (localPackageInfo.services == null)
          break label227;
        ServiceInfo[] arrayOfServiceInfo = localPackageInfo.services;
        m = arrayOfServiceInfo.length;
        n = 0;
        break label220;
        if (!arrayOfString[i4].equals("com.tencent.tmsecure.permission.RECEIVE_SMS"))
          break label239;
        j = i;
        continue;
        if (!arrayOfPermissionInfo[i2].name.equals("com.tencent.tmsecure.permission.RECEIVE_SMS"))
          break label245;
        k = i;
        continue;
        ServiceInfo localServiceInfo = arrayOfServiceInfo[n];
        String str = localServiceInfo.permission;
        if ((str != null) && (str.equals("com.tencent.tmsecure.permission.RECEIVE_SMS")))
        {
          boolean bool2 = localServiceInfo.exported;
          if (bool2)
            break label229;
        }
        n++;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
        bool1 = false;
        break label237;
      }
      if (i4 >= i3)
        j = 0;
      else
        while (true)
        {
          if (i2 < i1)
            break label249;
          k = 0;
          break;
          if (n < m)
            break label137;
          i = 0;
          bool1 = i & (j & k);
          return bool1;
          i4++;
          break label194;
          break label96;
          i2++;
        }
    }
  }

  public final void a(String paramString)
  {
    if (!this.b.contains(paramString))
      this.b.add(paramString);
  }

  public final ArrayList<ISDKClient> b()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2;
    Iterator localIterator;
    if (this.g)
    {
      List localList = this.d.getPackageManager().queryIntentServices(new Intent("com.tencent.tmsecure.action.SMS_RECEIVED"), 0);
      localArrayList2 = new ArrayList();
      localIterator = localList.iterator();
    }
    label148: 
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList1;
      ServiceInfo localServiceInfo = ((ResolveInfo)localIterator.next()).serviceInfo;
      String str = localServiceInfo.packageName;
      if ((!localArrayList2.contains(str)) && (a(localServiceInfo)))
      {
        if (str.equals(this.d.getPackageName()));
        for (Object localObject = SDKClient.getInstance(); ; localObject = b(localServiceInfo))
        {
          if (localObject == null)
            break label148;
          localArrayList1.add(localObject);
          break;
        }
      }
    }
  }

  public final void b(String paramString)
  {
    if (this.b.contains(paramString))
      this.b.remove(paramString);
  }

  public final int c()
  {
    Iterator localIterator;
    int i;
    if (this.g)
    {
      localIterator = this.d.getPackageManager().queryIntentServices(new Intent("com.tencent.tmsecure.action.SMS_RECEIVED"), 0).iterator();
      i = 0;
      if (localIterator.hasNext());
    }
    while (true)
    {
      return i;
      if (!a(((ResolveInfo)localIterator.next()).serviceInfo))
        break;
      i++;
      break;
      i = 1;
    }
  }

  static abstract class a
    implements ServiceConnection
  {
    protected ServiceInfo a;
    protected ISDKClient b;

    public a(ServiceInfo paramServiceInfo)
    {
      this.a = paramServiceInfo;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btx
 * JD-Core Version:    0.6.2
 */