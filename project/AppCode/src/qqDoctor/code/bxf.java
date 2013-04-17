import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.ICpuHelper;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.ProcessEntity;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class bxf extends BaseManager
{
  public Context a;
  public ICpuHelper b;
  private PackageManager c;
  private ActivityManager d;
  private List<ActivityManager.RunningServiceInfo> e;
  private HashMap<ComponentName, ServiceInfo> f = new HashMap();
  private byte[] g = new byte[0];
  private IAutoBootHelper h;
  private IMemoryHelper i;

  // ERROR //
  private static int a(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: bipush 241
    //   4: istore_2
    //   5: new 40	java/io/FileInputStream
    //   8: dup
    //   9: new 42	java/lang/StringBuilder
    //   12: dup
    //   13: ldc 44
    //   15: invokespecial 47	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   18: iload_0
    //   19: invokevirtual 51	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   22: ldc 53
    //   24: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: invokespecial 61	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   33: astore_3
    //   34: new 63	java/io/DataInputStream
    //   37: dup
    //   38: aload_3
    //   39: invokespecial 66	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore 4
    //   44: aload 4
    //   46: invokevirtual 69	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   49: astore 11
    //   51: aload 11
    //   53: ifnull +26 -> 79
    //   56: aload 11
    //   58: ldc 71
    //   60: invokevirtual 77	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   63: ifne +16 -> 79
    //   66: aload 11
    //   68: invokestatic 83	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   71: invokevirtual 87	java/lang/Integer:intValue	()I
    //   74: istore 14
    //   76: iload 14
    //   78: istore_2
    //   79: aload 4
    //   81: invokevirtual 90	java/io/DataInputStream:close	()V
    //   84: aload_3
    //   85: invokevirtual 91	java/io/FileInputStream:close	()V
    //   88: iload_2
    //   89: ireturn
    //   90: astore 5
    //   92: aconst_null
    //   93: astore 4
    //   95: aload 5
    //   97: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   100: aload 4
    //   102: ifnull +8 -> 110
    //   105: aload 4
    //   107: invokevirtual 90	java/io/DataInputStream:close	()V
    //   110: aload_1
    //   111: ifnull -23 -> 88
    //   114: aload_1
    //   115: invokevirtual 91	java/io/FileInputStream:close	()V
    //   118: goto -30 -> 88
    //   121: astore 9
    //   123: aload 9
    //   125: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   128: goto -40 -> 88
    //   131: astore 10
    //   133: aload 10
    //   135: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   138: goto -28 -> 110
    //   141: astore 6
    //   143: aconst_null
    //   144: astore_3
    //   145: aload_1
    //   146: ifnull +7 -> 153
    //   149: aload_1
    //   150: invokevirtual 90	java/io/DataInputStream:close	()V
    //   153: aload_3
    //   154: ifnull +7 -> 161
    //   157: aload_3
    //   158: invokevirtual 91	java/io/FileInputStream:close	()V
    //   161: aload 6
    //   163: athrow
    //   164: astore 8
    //   166: aload 8
    //   168: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   171: goto -18 -> 153
    //   174: astore 7
    //   176: aload 7
    //   178: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   181: goto -20 -> 161
    //   184: astore 12
    //   186: aload 12
    //   188: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   191: goto -107 -> 84
    //   194: astore 13
    //   196: aload 13
    //   198: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   201: goto -113 -> 88
    //   204: astore 6
    //   206: aconst_null
    //   207: astore_1
    //   208: goto -63 -> 145
    //   211: astore 6
    //   213: aload 4
    //   215: astore_1
    //   216: goto -71 -> 145
    //   219: astore 6
    //   221: aload_1
    //   222: astore_3
    //   223: aload 4
    //   225: astore_1
    //   226: goto -81 -> 145
    //   229: astore 5
    //   231: aload_3
    //   232: astore_1
    //   233: aconst_null
    //   234: astore 4
    //   236: goto -141 -> 95
    //   239: astore 5
    //   241: aload_3
    //   242: astore_1
    //   243: goto -148 -> 95
    //
    // Exception table:
    //   from	to	target	type
    //   5	34	90	java/io/IOException
    //   114	118	121	java/io/IOException
    //   105	110	131	java/io/IOException
    //   5	34	141	finally
    //   149	153	164	java/io/IOException
    //   157	161	174	java/io/IOException
    //   79	84	184	java/io/IOException
    //   84	88	194	java/io/IOException
    //   34	44	204	finally
    //   44	76	211	finally
    //   95	100	219	finally
    //   34	44	229	java/io/IOException
    //   44	76	239	java/io/IOException
  }

  private static int a(int paramInt, int[] paramArrayOfInt)
  {
    int j = 0;
    if (paramArrayOfInt != null);
    while (true)
    {
      if (j >= paramArrayOfInt.length)
        j = -1 + paramArrayOfInt.length;
      while (paramInt <= paramArrayOfInt[j])
        return j;
      j++;
    }
  }

  private boolean a(String paramString)
  {
    try
    {
      PackageInfo localPackageInfo2 = this.c.getPackageInfo(paramString, 0);
      localPackageInfo1 = localPackageInfo2;
      boolean bool = false;
      if (localPackageInfo1 != null)
      {
        int j = 0x1 & localPackageInfo1.applicationInfo.flags;
        bool = false;
        if (j != 0)
          bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        PackageInfo localPackageInfo1 = null;
    }
  }

  private void b(String paramString)
  {
    while (true)
    {
      Iterator localIterator;
      synchronized (this.g)
      {
        if (this.e == null)
          return;
        localIterator = this.e.iterator();
        if (localIterator.hasNext());
      }
      ActivityManager.RunningServiceInfo localRunningServiceInfo = (ActivityManager.RunningServiceInfo)localIterator.next();
      if (localRunningServiceInfo.service.getPackageName().equals(paramString))
      {
        Object localObject2 = (ServiceInfo)this.f.get(localRunningServiceInfo.service);
        if (localObject2 == null);
        try
        {
          ServiceInfo localServiceInfo = this.c.getServiceInfo(localRunningServiceInfo.service, 0);
          localObject2 = localServiceInfo;
          if (localObject2 != null)
            this.f.put(localRunningServiceInfo.service, localObject2);
          if ((localObject2 != null) && (((ServiceInfo)localObject2).permission == null) && (((ServiceInfo)localObject2).exported))
          {
            Intent localIntent = new Intent();
            localIntent.setComponent(localRunningServiceInfo.service);
            try
            {
              this.a.stopService(localIntent);
            }
            catch (Exception localException)
            {
            }
          }
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            localNameNotFoundException.printStackTrace();
        }
      }
    }
  }

  private static int[] c()
  {
    String str = btd.d("/sys/module/lowmemorykiller/parameters/adj");
    String[] arrayOfString;
    int[] arrayOfInt;
    int j;
    if (str != null)
    {
      arrayOfString = str.trim().split("[,\\s]");
      if ((arrayOfString != null) && (arrayOfString.length == 6))
      {
        arrayOfInt = new int[6];
        j = 0;
        if (j < 6);
      }
    }
    while (true)
    {
      return arrayOfInt;
      arrayOfInt[j] = Integer.parseInt(arrayOfString[j]);
      j++;
      break;
      arrayOfInt = new int[6];
      arrayOfInt[1] = 1;
      arrayOfInt[2] = 2;
      arrayOfInt[3] = 4;
      arrayOfInt[4] = 9;
      arrayOfInt[5] = 15;
    }
  }

  public final IAutoBootHelper a()
  {
    try
    {
      if (this.h == null)
        this.h = new bwx(this.a);
      IAutoBootHelper localIAutoBootHelper = this.h;
      return localIAutoBootHelper;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final ArrayList<ProcessEntity> a(boolean paramBoolean)
  {
    List localList = this.d.getRunningAppProcesses();
    ArrayList localArrayList = new ArrayList();
    int[] arrayOfInt = c();
    Iterator localIterator1 = localList.iterator();
    while (true)
    {
      if (!localIterator1.hasNext());
      synchronized (this.g)
      {
        this.e = this.d.getRunningServices(100);
        return localArrayList;
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator1.next();
        if (localRunningAppProcessInfo.pkgList == null)
          continue;
        int j = a(localRunningAppProcessInfo.pid);
        int k = a(j, arrayOfInt);
        String str;
        Iterator localIterator2;
        for (str : localRunningAppProcessInfo.pkgList)
          if (str.indexOf(':') < 0)
          {
            localIterator2 = localArrayList.iterator();
            if (localIterator2.hasNext())
              break label236;
            if ((paramBoolean) || (!a(str)))
            {
              ProcessEntity localProcessEntity = new ProcessEntity();
              localProcessEntity.mPackageName = str;
              localProcessEntity.mProcessName = localRunningAppProcessInfo.processName;
              localProcessEntity.mPriority = j;
              localProcessEntity.mPriorityGroup = k;
              localProcessEntity.mPid = localRunningAppProcessInfo.pid;
              localArrayList.add(localProcessEntity);
            }
          }
        label236: ((ProcessEntity)localIterator2.next()).mPackageName.equals(str);
      }
    }
  }

  public final boolean a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws PackageManager.NameNotFoundException
  {
    int j = SDKUtil.getSDKVersion();
    this.c.getPackageInfo(paramString, 0);
    if ((j < 5) || (j > 7))
      if (j >= 8)
      {
        if ((!ScriptHelper.isSystemUid()) && (!paramBoolean1) && ((!paramBoolean2) || (ScriptHelper.canRunAtRoot() != 0)))
          break label90;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = ("service call activity 79 s16 " + paramString);
        ScriptHelper.runScriptIfSystemUidOrAsRoot(arrayOfString);
      }
    while (true)
    {
      return true;
      label90: b(paramString);
      this.d.restartPackage(paramString);
    }
  }

  public final boolean a(List<String> paramList, boolean paramBoolean1, boolean paramBoolean2)
    throws PackageManager.NameNotFoundException
  {
    ArrayList localArrayList = new ArrayList(paramList);
    localArrayList.remove(this.a.getPackageName());
    ay localay = ScriptHelper.provider$24edfebd();
    Iterator localIterator2;
    boolean bool1;
    if (localay != null)
    {
      localIterator2 = localArrayList.iterator();
      bool1 = false;
      if (localIterator2.hasNext());
    }
    while (true)
    {
      if (bool1)
      {
        return true;
        localIterator2.next();
        bool1 = localay.g();
        if (!bool1)
          continue;
        break;
      }
      boolean bool2;
      if (paramBoolean1)
        bool2 = true;
      while (true)
      {
        Iterator localIterator1 = localArrayList.iterator();
        while (localIterator1.hasNext())
          a((String)localIterator1.next(), bool2, false);
        break;
        if ((paramBoolean2) && (ScriptHelper.canRunAtRoot() == 0))
          bool2 = true;
        else
          bool2 = false;
      }
      bool1 = false;
    }
  }

  public final IMemoryHelper b()
  {
    try
    {
      if (this.i == null)
        this.i = new bwz(this.a);
      IMemoryHelper localIMemoryHelper = this.i;
      return localIMemoryHelper;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.c = this.a.getPackageManager();
    this.d = ((ActivityManager)this.a.getSystemService("activity"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxf
 * JD-Core Version:    0.6.2
 */