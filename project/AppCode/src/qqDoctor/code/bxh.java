import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.permission.AbsDummyServiceCallback;
import com.tencent.tmsecure.module.permission.IDummyService;
import com.tencent.tmsecure.module.permission.IDummyService.Proxy;
import com.tencent.tmsecure.module.permission.NativeInterface;
import com.tencent.tmsecure.module.permission.PermissionControlConfig;
import com.tencent.tmsecure.module.permission.PermissionManager.IInitStepObserver;
import com.tencent.tmsecure.module.permission.PermissionRequestIDs;
import com.tencent.tmsecure.module.permission.PermissionTableItem;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class bxh extends BaseManager
{
  private static final SparseArray<String> a;
  private boolean b;
  private boolean c;
  private Context d;
  private HashMap<Integer, IDummyService> e;
  private PermissionControlConfig f;

  static
  {
    if (!bxh.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
      SparseArray localSparseArray = new SparseArray();
      a = localSparseArray;
      localSparseArray.put(0, "activity");
      a.put(1, "isms");
      return;
    }
  }

  private void a(PermissionManager.IInitStepObserver paramIInitStepObserver)
  {
    boolean bool1;
    if ((System.getProperty("os.name").toLowerCase().contains("linux")) && (System.getProperty("os.arch").toLowerCase().contains("arm")))
    {
      bool1 = true;
      paramIInitStepObserver.onReached(0, bool1);
      if (bool1)
        break label53;
    }
    label53: boolean bool2;
    label62: 
    do
    {
      return;
      bool1 = false;
      break;
      if (ScriptHelper.canRunAtRoot() != 0)
        break label288;
      bool2 = true;
      paramIInitStepObserver.onReached(1, bool2);
    }
    while (!bool2);
    ArrayList localArrayList = new ArrayList();
    File localFile1 = new File("/data/data.sys.zip");
    String str1 = TMSApplication.getStrFromEnvMap("pre_lib_path");
    if (str1 == null)
      str1 = this.d.getFilesDir().getParentFile().toString() + "/lib/";
    if (!str1.endsWith("/"))
      str1 = str1 + "/";
    String str2 = "lib" + TMSApplication.getStrFromEnvMap("apollo_libname") + ".so";
    File localFile2 = new File(str1 + str2);
    if (!localFile2.exists());
    for (File localFile3 = new File("/system/lib/" + str2); ; localFile3 = localFile2)
    {
      while (true)
      {
        if (!localFile3.exists())
        {
          paramIInitStepObserver.onReached(6, false);
          break;
          label288: bool2 = false;
          break label62;
        }
        String[] arrayOfString1 = new String[4];
        arrayOfString1[0] = "mount -o remount rw /data";
        arrayOfString1[1] = "chmod 777 /data";
        arrayOfString1[2] = "rm /data/data.sys.dex";
        arrayOfString1[3] = ("rm " + localFile1.getAbsolutePath());
        ScriptHelper.runScriptAsRoot(arrayOfString1);
        if ((!localFile1.exists()) || (localFile1.length() != localFile3.length()))
        {
          String[] arrayOfString2 = new String[1];
          arrayOfString2[0] = ("cat " + localFile3.getAbsolutePath() + " > " + localFile1.getAbsolutePath());
          ScriptHelper.runScriptAsRoot(arrayOfString2);
        }
        String[] arrayOfString3 = new String[1];
        arrayOfString3[0] = ("chmod 777 " + localFile1.getAbsolutePath());
        ScriptHelper.runScriptAsRoot(arrayOfString3);
        File localFile4 = new File(btd.a(this.d, "godEX.dat", this.d.getDir("permission", 0).getAbsolutePath()));
        File localFile5 = new File(btd.a(this.d, "aresEX.dat", this.d.getDir("permission", 0).getAbsolutePath()));
        btd.a(localFile4);
        btd.a(localFile5);
        File localFile6 = new File(btd.a(this.d, "godEX.dat", this.d.getDir("permission", 0).getAbsolutePath()));
        File localFile7 = new File(btd.a(this.d, "aresEX.dat", this.d.getDir("permission", 0).getAbsolutePath()));
        if ((localFile6.exists()) && (localFile7.exists()))
        {
          localArrayList.add("chmod 755 " + localFile6.getAbsolutePath());
          localArrayList.add("chmod 755 " + localFile7.getAbsolutePath());
        }
        ScriptHelper.runScriptAsRoot(localArrayList);
        int[] arrayOfInt = a(new String[] { "com.android.phone", "system_server" });
        int k;
        int m;
        String str3;
        String str4;
        String str5;
        String str6;
        int n;
        PackageManager localPackageManager;
        if (arrayOfInt.length > 1)
        {
          k = arrayOfInt[0];
          m = arrayOfInt[1];
          str3 = localFile6.getAbsolutePath();
          str4 = localFile7.getAbsolutePath();
          str5 = String.valueOf(NativeInterface.dlopenAddr());
          str6 = String.valueOf(NativeInterface.dlsymAddr());
          n = 1001;
          localPackageManager = TMSApplication.getApplicaionContext().getPackageManager();
        }
        try
        {
          n = localPackageManager.getApplicationInfo("com.android.phone", 0).uid;
          str7 = n + "." + n;
          localArrayList.clear();
          if (!btd.c("/data/data/com.android.phone/permission"))
          {
            localArrayList.add("mkdir /data/data/com.android.phone/permission");
            localArrayList.add("chmod 777 /data/data/com.android.phone/permission");
            localArrayList.add("chown " + str7 + " /data/data/com.android.phone/permission");
            ScriptHelper.runScriptAsRoot(localArrayList);
            if (!a(1))
            {
              String[] arrayOfString5 = new String[1];
              Object[] arrayOfObject2 = new Object[6];
              arrayOfObject2[0] = str3;
              arrayOfObject2[1] = Integer.valueOf(k);
              arrayOfObject2[2] = str4;
              arrayOfObject2[3] = "/data/data/com.android.phone/permission";
              arrayOfObject2[4] = str5;
              arrayOfObject2[5] = str6;
              arrayOfString5[0] = String.format("%s %d %s hook 100 %s %s %s", arrayOfObject2);
              ScriptHelper.runScriptAsRoot(arrayOfString5);
            }
            if (!a(0))
            {
              String[] arrayOfString4 = new String[1];
              Object[] arrayOfObject1 = new Object[6];
              arrayOfObject1[0] = str3;
              arrayOfObject1[1] = Integer.valueOf(m);
              arrayOfObject1[2] = str4;
              arrayOfObject1[3] = "/data";
              arrayOfObject1[4] = str5;
              arrayOfObject1[5] = str6;
              arrayOfString4[0] = String.format("%s %d %s hook 100 %s %s %s", arrayOfObject1);
              ScriptHelper.runScriptAsRoot(arrayOfString4);
            }
            i = 0;
            j = 5;
            if (j >= 0)
              break label1101;
            if (i != 0)
              break label1151;
            paramIInitStepObserver.onReached(4, false);
          }
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          int j;
          while (true)
          {
            String str7;
            localNameNotFoundException.printStackTrace();
            continue;
            localArrayList.add("chmod 777 /data/data/com.android.phone/permission");
            localArrayList.add("chown " + str7 + " /data/data/com.android.phone/permission");
          }
          label1101: j--;
          if (f() == 7777);
          for (int i = 1; ; i = 0)
          {
            while (i == 0)
            {
              Thread.currentThread();
              try
              {
                Thread.sleep(1500L);
              }
              catch (InterruptedException localInterruptedException)
              {
                localInterruptedException.printStackTrace();
              }
            }
            break;
          }
          label1151: this.e = e();
          paramIInitStepObserver.onReached(4, true);
        }
      }
      break;
    }
  }

  private boolean a(int paramInt)
  {
    if (IDummyService.Proxy.asInterface(btm.a((String)a.get(paramInt))).pingDummyService(12, this.d.getPackageName()) == 7777);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static final int[] a(List<String> paramList)
  {
    int[] arrayOfInt = new int[PermissionRequestIDs.getCount()];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfInt.length)
      {
        if ((paramList.contains("android.permission.CALL_PHONE")) || (paramList.contains("android.permission.CALL_PRIVILEGED")))
          arrayOfInt[0] = 2;
        if (paramList.contains("android.permission.SEND_SMS"))
          arrayOfInt[1] = 2;
        if ((paramList.contains("android.permission.READ_CONTACTS")) || (paramList.contains("android.permission.WRITE_CONTACTS")))
        {
          arrayOfInt[2] = 2;
          arrayOfInt[3] = 2;
        }
        if ((paramList.contains("android.permission.READ_SMS")) || (paramList.contains("android.permission.WRITE_SMS")))
          arrayOfInt[4] = 2;
        if (paramList.contains("android.permission.READ_PHONE_STATE"))
        {
          arrayOfInt[6] = 0;
          arrayOfInt[7] = 0;
          arrayOfInt[8] = 0;
        }
        if (paramList.contains("android.permission.INTERNET"))
          arrayOfInt[9] = 0;
        if (paramList.contains("android.permission.ACCESS_FINE_LOCATION"))
          arrayOfInt[12] = 2;
        if ((paramList.contains("android.permission.RECORD_AUDIO")) && (paramList.contains("android.permission.READ_PHONE_STATE")))
          arrayOfInt[13] = 2;
        arrayOfInt[14] = 2;
        return arrayOfInt;
      }
      arrayOfInt[i] = 65535;
    }
  }

  private static int[] a(String[] paramArrayOfString)
  {
    int i = -1;
    int[] arrayOfInt = new int[paramArrayOfString.length];
    int j = 0;
    String[] arrayOfString1;
    int n;
    int i1;
    if (j >= arrayOfInt.length)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("ps");
      ScriptHelper.runScript(localStringBuilder, localArrayList);
      arrayOfString1 = localStringBuilder.toString().split("\n");
      if (arrayOfString1.length > 0)
      {
        n = 0;
        i1 = i;
        if (n < arrayOfString1.length)
          break label115;
      }
    }
    label115: int i2;
    for (i = i1; ; i = i2)
    {
      int k;
      String[] arrayOfString2;
      if (i >= 0)
      {
        k = 1;
        if (k < arrayOfString1.length);
      }
      else
      {
        return arrayOfInt;
        arrayOfInt[j] = i;
        j++;
        break;
        if ((TextUtils.isEmpty(arrayOfString1[n].trim())) || (!arrayOfString1[n].toLowerCase().contains("pid")))
          break label277;
        arrayOfString2 = arrayOfString1[n].trim().split("[\\s ]+");
        i2 = 0;
        label165: if (i2 >= arrayOfString2.length)
        {
          i2 = i1;
          label177: if (i2 != i)
            continue;
        }
      }
      while (true)
      {
        n++;
        i1 = i2;
        break;
        if (arrayOfString2[i2].equalsIgnoreCase("pid"))
          break label177;
        i2++;
        break label165;
        String str = arrayOfString1[k].trim();
        label271: for (int m = 0; ; m++)
        {
          if (m >= paramArrayOfString.length);
          while (true)
          {
            k++;
            break;
            if (!str.contains(paramArrayOfString[m]))
              break label271;
            arrayOfInt[m] = Integer.parseInt(str.split("[\\s ]+")[i]);
          }
        }
        label277: i2 = i1;
      }
    }
  }

  public static boolean d()
  {
    boolean bool1 = true;
    boolean bool2;
    if ((System.getProperty("os.name").toLowerCase().contains("linux")) && (System.getProperty("os.arch").toLowerCase().contains("arm")))
    {
      bool2 = bool1;
      if ((!bool2) || (ScriptHelper.canRunAtRoot() != 0))
        break label53;
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label53: bool1 = false;
    }
  }

  private static HashMap<Integer, IDummyService> e()
  {
    HashMap localHashMap = new HashMap();
    int i = a.size();
    int j = 0;
    if (j >= i)
      return localHashMap;
    int k = a.keyAt(j);
    String str = (String)a.valueAt(j);
    IBinder localIBinder = btm.a(str);
    while (true)
    {
      if (localIBinder != null)
      {
        IDummyService localIDummyService = IDummyService.Proxy.asInterface(localIBinder);
        localHashMap.put(Integer.valueOf(k), localIDummyService);
        j++;
        break;
      }
      Thread.currentThread();
      try
      {
        Thread.sleep(500L);
        localIBinder = btm.a(str);
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  private int f()
  {
    Iterator localIterator = e().values().iterator();
    int i;
    if (!localIterator.hasNext())
      i = 7777;
    while (true)
    {
      return i;
      i = ((IDummyService)localIterator.next()).pingDummyService(12, this.d.getPackageName());
      if (i == 7777)
        break;
    }
  }

  public final PermissionControlConfig a()
  {
    return this.f;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.e == null)
      throw new RuntimeException("Must init the PermissionManager first.");
    Iterator localIterator = this.e.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext());
      synchronized (this.f)
      {
        this.f.update(paramInt1, paramInt2, paramInt3);
        return;
        IDummyService localIDummyService = (IDummyService)localIterator.next();
        try
        {
          localIDummyService.updatePermissionTable(paramInt1, paramInt2, paramInt3);
        }
        catch (RemoteException localRemoteException)
        {
          localRemoteException.printStackTrace();
        }
      }
    }
  }

  public final void a(AbsDummyServiceCallback paramAbsDummyServiceCallback)
  {
    if (this.e == null)
      throw new RuntimeException("Must init the PermissionManager first.");
    Iterator localIterator = this.e.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      IDummyService localIDummyService = (IDummyService)localIterator.next();
      try
      {
        localIDummyService.setDummyServiceCallback(paramAbsDummyServiceCallback);
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }
  }

  public final void a(PermissionManager.IInitStepObserver paramIInitStepObserver, PermissionControlConfig paramPermissionControlConfig)
  {
    try
    {
      if ((!g) && ((paramIInitStepObserver == null) || (paramPermissionControlConfig == null)))
        throw new AssertionError();
    }
    finally
    {
    }
    boolean bool1 = this.c;
    if (bool1);
    while (true)
    {
      return;
      this.e = null;
      switch (f())
      {
      default:
        a(paramIInitStepObserver);
        if ((this.e != null) && (this.e.values().size() > 0))
          this.f = paramPermissionControlConfig;
        break;
      case 7777:
      case 8888:
      case 9999:
      case 1111:
        try
        {
          label101: Iterator localIterator = this.e.values().iterator();
          while (true)
          {
            boolean bool2 = localIterator.hasNext();
            if (!bool2)
            {
              paramIInitStepObserver.onReached(6, true);
              this.c = true;
              this.b = true;
              break;
              this.e = e();
              break label101;
              if ((!paramIInitStepObserver.onReached(2, false)) || (!ScriptHelper.isRootGot()))
                break label101;
              ScriptHelper.runScriptAsRoot(new String[] { "reboot" });
              int[] arrayOfInt = a(new String[] { "/system/bin/servicemanager" });
              String[] arrayOfString = new String[1];
              arrayOfString[0] = ("kill -9 " + arrayOfInt[0]);
              ScriptHelper.runScript(arrayOfString);
              break label101;
              paramIInitStepObserver.onReached(3, true);
              break label101;
            }
            IDummyService localIDummyService = (IDummyService)localIterator.next();
            localIDummyService.setPermissionTable(this.f);
            localIDummyService.setEnable(true);
          }
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
      paramIInitStepObserver.onReached(6, false);
    }
  }

  public final void a(PermissionTableItem paramPermissionTableItem)
  {
    if (this.e == null)
      throw new RuntimeException("Must init the PermissionManager first.");
    Iterator localIterator = this.e.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext());
      synchronized (this.f)
      {
        this.f.addItem(paramPermissionTableItem);
        return;
        IDummyService localIDummyService = (IDummyService)localIterator.next();
        try
        {
          localIDummyService.addPermissionTableItem(paramPermissionTableItem);
        }
        catch (RemoteException localRemoteException)
        {
          localRemoteException.printStackTrace();
        }
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      boolean bool = this.b;
      if (bool == paramBoolean)
        return;
      if (this.e == null)
        throw new RuntimeException("Must init the PermissionManager first.");
    }
    finally
    {
    }
    Iterator localIterator = this.e.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.b = paramBoolean;
        break;
      }
      IDummyService localIDummyService = (IDummyService)localIterator.next();
      try
      {
        localIDummyService.setEnable(paramBoolean);
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    }
  }

  public final void b(PermissionTableItem paramPermissionTableItem)
  {
    if (this.e == null)
      throw new RuntimeException("Must init the PermissionManager first.");
    Iterator localIterator = this.e.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext());
      synchronized (this.f)
      {
        this.f.removeItem(paramPermissionTableItem);
        return;
        IDummyService localIDummyService = (IDummyService)localIterator.next();
        try
        {
          localIDummyService.removePermissionTableItem(paramPermissionTableItem);
        }
        catch (RemoteException localRemoteException)
        {
          localRemoteException.printStackTrace();
        }
      }
    }
  }

  public final boolean b()
  {
    if ((this.c) && (this.b));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void c(PermissionTableItem paramPermissionTableItem)
  {
    if (this.e == null)
      throw new RuntimeException("Must init the PermissionManager first.");
    Iterator localIterator = this.e.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext());
      synchronized (this.f)
      {
        this.f.update(paramPermissionTableItem);
        return;
        IDummyService localIDummyService = (IDummyService)localIterator.next();
        try
        {
          localIDummyService.updatePermissionTable(paramPermissionTableItem);
        }
        catch (RemoteException localRemoteException)
        {
          localRemoteException.printStackTrace();
        }
      }
    }
  }

  public final boolean c()
  {
    return this.c;
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.d = paramContext;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxh
 * JD-Core Version:    0.6.2
 */