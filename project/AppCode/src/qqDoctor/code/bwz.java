import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.os.Debug.MemoryInfo;
import android.util.SparseArray;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.IMemoryHelper.MemoryInfo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class bwz
  implements IMemoryHelper
{
  private static Method a;
  private static Method b;
  private static long c = -1L;
  private Context d;
  private PackageManager e;
  private ActivityManager f;

  static
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Long.TYPE;
      arrayOfClass[1] = IPackageDataObserver.class;
      Method localMethod1 = PackageManager.class.getDeclaredMethod("freeStorageAndNotify", arrayOfClass);
      a = localMethod1;
      localMethod1.setAccessible(true);
      Method localMethod2 = PackageManager.class.getDeclaredMethod("getPackageSizeInfo", new Class[] { String.class, IPackageStatsObserver.class });
      b = localMethod2;
      localMethod2.setAccessible(true);
      ActivityManager.RunningAppProcessInfo.class.getDeclaredField("flags").setAccessible(true);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
        localNoSuchFieldException.printStackTrace();
    }
  }

  public bwz(Context paramContext)
  {
    this.d = paramContext;
    this.e = this.d.getPackageManager();
    this.f = ((ActivityManager)this.d.getSystemService("activity"));
  }

  // ERROR //
  public final boolean clearAllCacheData()
  {
    // Byte code:
    //   0: ldc2_w 110
    //   3: lstore_1
    //   4: new 4	java/lang/Object
    //   7: dup
    //   8: invokespecial 83	java/lang/Object:<init>	()V
    //   11: astore_3
    //   12: new 113	java/util/concurrent/atomic/AtomicBoolean
    //   15: dup
    //   16: iconst_0
    //   17: invokespecial 115	java/util/concurrent/atomic/AtomicBoolean:<init>	(Z)V
    //   20: astore 4
    //   22: invokestatic 121	android/os/Environment:getDataDirectory	()Ljava/io/File;
    //   25: astore 5
    //   27: aload 5
    //   29: ifnonnull +59 -> 88
    //   32: new 123	bxa
    //   35: dup
    //   36: aload 4
    //   38: aload_3
    //   39: invokespecial 126	bxa:<init>	(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    //   42: astore 9
    //   44: getstatic 49	bwz:a	Ljava/lang/reflect/Method;
    //   47: ifnonnull +85 -> 132
    //   50: new 128	java/lang/NullPointerException
    //   53: dup
    //   54: invokespecial 129	java/lang/NullPointerException:<init>	()V
    //   57: athrow
    //   58: astore 10
    //   60: aload 10
    //   62: invokevirtual 130	java/lang/Exception:printStackTrace	()V
    //   65: aload 4
    //   67: iconst_0
    //   68: invokevirtual 133	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   71: aload_3
    //   72: monitorenter
    //   73: aload_3
    //   74: ldc2_w 134
    //   77: invokevirtual 139	java/lang/Object:wait	(J)V
    //   80: aload_3
    //   81: monitorexit
    //   82: aload 4
    //   84: invokevirtual 142	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   87: ireturn
    //   88: new 144	android/os/StatFs
    //   91: dup
    //   92: aload 5
    //   94: invokevirtual 150	java/io/File:getPath	()Ljava/lang/String;
    //   97: invokespecial 153	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   100: astore 6
    //   102: aload 6
    //   104: invokevirtual 157	android/os/StatFs:getBlockSize	()I
    //   107: i2l
    //   108: aload 6
    //   110: invokevirtual 160	android/os/StatFs:getBlockCount	()I
    //   113: i2l
    //   114: lmul
    //   115: lstore 7
    //   117: lload 7
    //   119: ldc2_w 161
    //   122: lcmp
    //   123: iflt -91 -> 32
    //   126: lload 7
    //   128: lstore_1
    //   129: goto -97 -> 32
    //   132: getstatic 49	bwz:a	Ljava/lang/reflect/Method;
    //   135: astore 13
    //   137: aload_0
    //   138: getfield 93	bwz:e	Landroid/content/pm/PackageManager;
    //   141: astore 14
    //   143: iconst_2
    //   144: anewarray 4	java/lang/Object
    //   147: astore 15
    //   149: aload 15
    //   151: iconst_0
    //   152: lload_1
    //   153: invokestatic 166	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   156: aastore
    //   157: aload 15
    //   159: iconst_1
    //   160: aload 9
    //   162: aastore
    //   163: aload 13
    //   165: aload 14
    //   167: aload 15
    //   169: invokevirtual 170	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   172: pop
    //   173: goto -102 -> 71
    //   176: astore 12
    //   178: aload_3
    //   179: monitorexit
    //   180: aload 12
    //   182: athrow
    //   183: astore 11
    //   185: goto -105 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   44	58	58	java/lang/Exception
    //   132	173	58	java/lang/Exception
    //   73	80	176	finally
    //   80	82	176	finally
    //   73	80	183	java/lang/InterruptedException
  }

  public final ArrayList<PackageStats> getAllAppPackageStats(List<String> paramList)
  {
    ArrayList localArrayList1 = new ArrayList(paramList);
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localArrayList1.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList2;
      localArrayList2.add(getAppPackageStats((String)localIterator.next()));
    }
  }

  // ERROR //
  public final PackageStats getAppPackageStats(String paramString)
  {
    // Byte code:
    //   0: new 4	java/lang/Object
    //   3: dup
    //   4: invokespecial 83	java/lang/Object:<init>	()V
    //   7: astore_2
    //   8: new 203	java/util/concurrent/atomic/AtomicReference
    //   11: dup
    //   12: aconst_null
    //   13: invokespecial 206	java/util/concurrent/atomic/AtomicReference:<init>	(Ljava/lang/Object;)V
    //   16: astore_3
    //   17: new 208	bxb
    //   20: dup
    //   21: aload_3
    //   22: aload_2
    //   23: invokespecial 211	bxb:<init>	(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    //   26: astore 4
    //   28: getstatic 63	bwz:b	Ljava/lang/reflect/Method;
    //   31: ifnonnull +15 -> 46
    //   34: aload_3
    //   35: invokevirtual 213	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   38: checkcast 215	android/content/pm/PackageStats
    //   41: astore 6
    //   43: aload 6
    //   45: areturn
    //   46: getstatic 63	bwz:b	Ljava/lang/reflect/Method;
    //   49: aload_0
    //   50: getfield 93	bwz:e	Landroid/content/pm/PackageManager;
    //   53: iconst_2
    //   54: anewarray 4	java/lang/Object
    //   57: dup
    //   58: iconst_0
    //   59: aload_1
    //   60: aastore
    //   61: dup
    //   62: iconst_1
    //   63: aload 4
    //   65: aastore
    //   66: invokevirtual 170	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   69: pop
    //   70: aload_2
    //   71: monitorenter
    //   72: aload_2
    //   73: ldc2_w 134
    //   76: invokevirtual 139	java/lang/Object:wait	(J)V
    //   79: aload_2
    //   80: monitorexit
    //   81: aload_3
    //   82: invokevirtual 213	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   85: checkcast 215	android/content/pm/PackageStats
    //   88: astore 6
    //   90: goto -47 -> 43
    //   93: astore 9
    //   95: aload_2
    //   96: monitorexit
    //   97: aload 9
    //   99: athrow
    //   100: astore 5
    //   102: aload_3
    //   103: aconst_null
    //   104: invokevirtual 217	java/util/concurrent/atomic/AtomicReference:set	(Ljava/lang/Object;)V
    //   107: goto -26 -> 81
    //   110: astore 8
    //   112: goto -33 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   72	79	93	finally
    //   79	81	93	finally
    //   46	72	100	java/lang/Exception
    //   95	100	100	java/lang/Exception
    //   72	79	110	java/lang/InterruptedException
  }

  public final long getFreeMemery()
  {
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    this.f.getMemoryInfo(localMemoryInfo);
    return ()((float)localMemoryInfo.availMem / 1024.0F);
  }

  public final IMemoryHelper.MemoryInfo[] getRamSize(int[] paramArrayOfInt)
  {
    Debug.MemoryInfo[] arrayOfMemoryInfo;
    IMemoryHelper.MemoryInfo[] arrayOfMemoryInfo2;
    int i;
    if ((paramArrayOfInt != null) && (paramArrayOfInt.length > 0))
    {
      arrayOfMemoryInfo = this.f.getProcessMemoryInfo(paramArrayOfInt);
      arrayOfMemoryInfo2 = new IMemoryHelper.MemoryInfo[arrayOfMemoryInfo.length];
      i = 0;
      if (i < paramArrayOfInt.length);
    }
    for (IMemoryHelper.MemoryInfo[] arrayOfMemoryInfo1 = arrayOfMemoryInfo2; ; arrayOfMemoryInfo1 = null)
    {
      return arrayOfMemoryInfo1;
      IMemoryHelper.MemoryInfo localMemoryInfo = new IMemoryHelper.MemoryInfo();
      localMemoryInfo.mPid = paramArrayOfInt[i];
      localMemoryInfo.mInfo = arrayOfMemoryInfo[i];
      localMemoryInfo.mPkg = null;
      arrayOfMemoryInfo2[i] = localMemoryInfo;
      i++;
      break;
    }
  }

  public final IMemoryHelper.MemoryInfo[] getRamSize(String[] paramArrayOfString)
  {
    int i = 0;
    List localList1 = this.f.getRunningAppProcesses();
    SparseArray localSparseArray = new SparseArray();
    List localList2 = Arrays.asList(paramArrayOfString);
    Iterator localIterator1 = localList1.iterator();
    int[] arrayOfInt;
    int m;
    label63: Debug.MemoryInfo[] arrayOfMemoryInfo1;
    ArrayList localArrayList2;
    if (!localIterator1.hasNext())
    {
      if (localSparseArray.size() <= 0)
        break label403;
      arrayOfInt = new int[localSparseArray.size()];
      m = 0;
      if (m < localSparseArray.size())
        break label279;
      arrayOfMemoryInfo1 = this.f.getProcessMemoryInfo(arrayOfInt);
      localArrayList2 = new ArrayList();
      if (i < localSparseArray.size())
        break label297;
      if (localArrayList2.size() <= 0)
        break label403;
    }
    label403: for (IMemoryHelper.MemoryInfo[] arrayOfMemoryInfo = (IMemoryHelper.MemoryInfo[])localArrayList2.toArray(); ; arrayOfMemoryInfo = null)
    {
      return arrayOfMemoryInfo;
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator1.next();
      if ((localRunningAppProcessInfo.pkgList == null) || (localRunningAppProcessInfo.pkgList.length == 0))
        break;
      String[] arrayOfString = localRunningAppProcessInfo.pkgList;
      int j = arrayOfString.length;
      int k = 0;
      label171: String str1;
      List localList3;
      if (k < j)
      {
        str1 = arrayOfString[k];
        if (localList2.contains(str1))
        {
          localList3 = (List)localSparseArray.get(localRunningAppProcessInfo.pid);
          if (localList3 != null)
            break label254;
          ArrayList localArrayList1 = new ArrayList();
          localArrayList1.add(str1);
          localSparseArray.put(localRunningAppProcessInfo.pid, localArrayList1);
        }
      }
      while (true)
      {
        k++;
        break label171;
        break;
        label254: if (!localList3.contains(str1))
          localList3.add(str1);
      }
      label279: arrayOfInt[m] = localSparseArray.keyAt(m);
      m++;
      break label63;
      label297: int n = localSparseArray.keyAt(i);
      List localList4 = (List)localSparseArray.valueAt(i);
      Iterator localIterator2;
      if (localList4 != null)
        localIterator2 = localList4.iterator();
      while (true)
      {
        if (!localIterator2.hasNext())
        {
          i++;
          break;
        }
        String str2 = (String)localIterator2.next();
        IMemoryHelper.MemoryInfo localMemoryInfo = new IMemoryHelper.MemoryInfo();
        localMemoryInfo.mPid = n;
        localMemoryInfo.mInfo = arrayOfMemoryInfo1[i];
        localMemoryInfo.mPkg = str2;
        localArrayList2.add(localMemoryInfo);
      }
    }
  }

  // ERROR //
  public final long getTotalMemery()
  {
    // Byte code:
    //   0: getstatic 29	bwz:c	J
    //   3: ldc2_w 26
    //   6: lcmp
    //   7: ifne +78 -> 85
    //   10: new 146	java/io/File
    //   13: dup
    //   14: ldc_w 309
    //   17: invokespecial 310	java/io/File:<init>	(Ljava/lang/String;)V
    //   20: astore_1
    //   21: aload_1
    //   22: invokevirtual 313	java/io/File:exists	()Z
    //   25: ifeq +60 -> 85
    //   28: new 315	java/io/DataInputStream
    //   31: dup
    //   32: new 317	java/io/FileInputStream
    //   35: dup
    //   36: aload_1
    //   37: invokespecial 320	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   40: invokespecial 323	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   43: astore 4
    //   45: aload 4
    //   47: invokevirtual 326	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   50: astore 13
    //   52: aload 13
    //   54: ifnonnull +45 -> 99
    //   57: new 305	java/io/IOException
    //   60: dup
    //   61: ldc_w 328
    //   64: invokespecial 329	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   67: athrow
    //   68: astore 11
    //   70: aload 11
    //   72: invokevirtual 330	java/io/FileNotFoundException:printStackTrace	()V
    //   75: aload 4
    //   77: ifnull +8 -> 85
    //   80: aload 4
    //   82: invokevirtual 333	java/io/DataInputStream:close	()V
    //   85: getstatic 29	bwz:c	J
    //   88: lconst_0
    //   89: lcmp
    //   90: ifle +150 -> 240
    //   93: getstatic 29	bwz:c	J
    //   96: lstore_2
    //   97: lload_2
    //   98: lreturn
    //   99: aload 13
    //   101: invokevirtual 336	java/lang/String:trim	()Ljava/lang/String;
    //   104: ldc_w 338
    //   107: invokevirtual 342	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   110: iconst_1
    //   111: aaload
    //   112: invokestatic 346	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   115: putstatic 29	bwz:c	J
    //   118: aload 4
    //   120: invokevirtual 333	java/io/DataInputStream:close	()V
    //   123: goto -38 -> 85
    //   126: astore 14
    //   128: aload 14
    //   130: invokevirtual 347	java/io/IOException:printStackTrace	()V
    //   133: goto -48 -> 85
    //   136: astore 12
    //   138: aload 12
    //   140: invokevirtual 347	java/io/IOException:printStackTrace	()V
    //   143: goto -58 -> 85
    //   146: astore 5
    //   148: aconst_null
    //   149: astore 4
    //   151: aload 5
    //   153: invokevirtual 347	java/io/IOException:printStackTrace	()V
    //   156: aload 4
    //   158: ifnull -73 -> 85
    //   161: aload 4
    //   163: invokevirtual 333	java/io/DataInputStream:close	()V
    //   166: goto -81 -> 85
    //   169: astore 8
    //   171: aload 8
    //   173: invokevirtual 347	java/io/IOException:printStackTrace	()V
    //   176: goto -91 -> 85
    //   179: astore 9
    //   181: aconst_null
    //   182: astore 4
    //   184: aload 9
    //   186: invokevirtual 348	java/lang/NumberFormatException:printStackTrace	()V
    //   189: aload 4
    //   191: ifnull -106 -> 85
    //   194: aload 4
    //   196: invokevirtual 333	java/io/DataInputStream:close	()V
    //   199: goto -114 -> 85
    //   202: astore 10
    //   204: aload 10
    //   206: invokevirtual 347	java/io/IOException:printStackTrace	()V
    //   209: goto -124 -> 85
    //   212: astore 6
    //   214: aconst_null
    //   215: astore 4
    //   217: aload 4
    //   219: ifnull +8 -> 227
    //   222: aload 4
    //   224: invokevirtual 333	java/io/DataInputStream:close	()V
    //   227: aload 6
    //   229: athrow
    //   230: astore 7
    //   232: aload 7
    //   234: invokevirtual 347	java/io/IOException:printStackTrace	()V
    //   237: goto -10 -> 227
    //   240: lconst_1
    //   241: lstore_2
    //   242: goto -145 -> 97
    //   245: astore 6
    //   247: goto -30 -> 217
    //   250: astore 9
    //   252: goto -68 -> 184
    //   255: astore 5
    //   257: goto -106 -> 151
    //   260: astore 11
    //   262: aconst_null
    //   263: astore 4
    //   265: goto -195 -> 70
    //
    // Exception table:
    //   from	to	target	type
    //   45	68	68	java/io/FileNotFoundException
    //   99	118	68	java/io/FileNotFoundException
    //   118	123	126	java/io/IOException
    //   80	85	136	java/io/IOException
    //   28	45	146	java/io/IOException
    //   161	166	169	java/io/IOException
    //   28	45	179	java/lang/NumberFormatException
    //   194	199	202	java/io/IOException
    //   28	45	212	finally
    //   222	227	230	java/io/IOException
    //   45	68	245	finally
    //   70	75	245	finally
    //   99	118	245	finally
    //   151	156	245	finally
    //   184	189	245	finally
    //   45	68	250	java/lang/NumberFormatException
    //   99	118	250	java/lang/NumberFormatException
    //   45	68	255	java/io/IOException
    //   99	118	255	java/io/IOException
    //   28	45	260	java/io/FileNotFoundException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwz
 * JD-Core Version:    0.6.2
 */