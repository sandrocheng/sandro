package org.antivirus.ui.performance;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class p
{
  private HashMap a = new HashMap();

  public p(String paramString)
  {
    this.a.put("com.android.launcher", Boolean.valueOf(true));
    this.a.put("com.android.launcher2", Boolean.valueOf(true));
    this.a.put("com.htc.launcher", Boolean.valueOf(true));
    this.a.put("com.htc.android.mail", Boolean.valueOf(true));
    this.a.put(paramString, Boolean.valueOf(true));
  }

  // ERROR //
  public static long a()
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore_0
    //   2: new 43	java/io/FileInputStream
    //   5: dup
    //   6: ldc 45
    //   8: invokespecial 47	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: sipush 1024
    //   15: newarray byte
    //   17: astore 9
    //   19: aload_2
    //   20: aload 9
    //   22: invokevirtual 51	java/io/FileInputStream:read	([B)I
    //   25: istore 10
    //   27: aload 9
    //   29: arraylength
    //   30: istore 11
    //   32: lload_0
    //   33: lstore 12
    //   35: lload_0
    //   36: lstore 14
    //   38: iconst_0
    //   39: istore 16
    //   41: goto +178 -> 219
    //   44: aload 9
    //   46: iload 16
    //   48: ldc 53
    //   50: invokestatic 56	org/antivirus/ui/performance/p:a	([BILjava/lang/String;)Z
    //   53: ifeq +38 -> 91
    //   56: iinc 16 7
    //   59: aload 9
    //   61: iload 16
    //   63: invokestatic 59	org/antivirus/ui/performance/p:a	([BI)J
    //   66: lstore 14
    //   68: iload 16
    //   70: iload 11
    //   72: if_icmpge +50 -> 122
    //   75: aload 9
    //   77: iload 16
    //   79: baload
    //   80: bipush 10
    //   82: if_icmpeq +40 -> 122
    //   85: iinc 16 1
    //   88: goto -20 -> 68
    //   91: aload 9
    //   93: iload 16
    //   95: ldc 61
    //   97: invokestatic 56	org/antivirus/ui/performance/p:a	([BILjava/lang/String;)Z
    //   100: ifeq -32 -> 68
    //   103: iinc 16 6
    //   106: aload 9
    //   108: iload 16
    //   110: invokestatic 59	org/antivirus/ui/performance/p:a	([BI)J
    //   113: lstore 18
    //   115: lload 18
    //   117: lstore 12
    //   119: goto -51 -> 68
    //   122: iinc 16 1
    //   125: goto +94 -> 219
    //   128: lload 14
    //   130: lload 12
    //   132: ladd
    //   133: lstore_0
    //   134: aload_2
    //   135: invokevirtual 64	java/io/FileInputStream:close	()V
    //   138: lload_0
    //   139: lreturn
    //   140: astore 21
    //   142: aconst_null
    //   143: astore_2
    //   144: aload_2
    //   145: ifnull -7 -> 138
    //   148: aload_2
    //   149: invokevirtual 64	java/io/FileInputStream:close	()V
    //   152: goto -14 -> 138
    //   155: astore 4
    //   157: goto -19 -> 138
    //   160: astore 20
    //   162: aconst_null
    //   163: astore_2
    //   164: aload_2
    //   165: ifnull -27 -> 138
    //   168: aload_2
    //   169: invokevirtual 64	java/io/FileInputStream:close	()V
    //   172: goto -34 -> 138
    //   175: astore 6
    //   177: goto -39 -> 138
    //   180: astore 7
    //   182: aconst_null
    //   183: astore_2
    //   184: aload_2
    //   185: ifnull +7 -> 192
    //   188: aload_2
    //   189: invokevirtual 64	java/io/FileInputStream:close	()V
    //   192: aload 7
    //   194: athrow
    //   195: astore 17
    //   197: goto -59 -> 138
    //   200: astore 8
    //   202: goto -10 -> 192
    //   205: astore 7
    //   207: goto -23 -> 184
    //   210: astore 5
    //   212: goto -48 -> 164
    //   215: astore_3
    //   216: goto -72 -> 144
    //   219: iload 16
    //   221: iload 10
    //   223: if_icmpge -95 -> 128
    //   226: lload 14
    //   228: lload_0
    //   229: lcmp
    //   230: ifeq -186 -> 44
    //   233: lload 12
    //   235: lload_0
    //   236: lcmp
    //   237: ifne -109 -> 128
    //   240: goto -196 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   2	12	140	java/io/FileNotFoundException
    //   148	152	155	java/lang/Exception
    //   2	12	160	java/io/IOException
    //   168	172	175	java/lang/Exception
    //   2	12	180	finally
    //   134	138	195	java/lang/Exception
    //   188	192	200	java/lang/Exception
    //   12	115	205	finally
    //   12	115	210	java/io/IOException
    //   12	115	215	java/io/FileNotFoundException
  }

  private static long a(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if ((paramInt < paramArrayOfByte.length) && (paramArrayOfByte[paramInt] != 10))
      if ((paramArrayOfByte[paramInt] >= 48) && (paramArrayOfByte[paramInt] <= 57))
        for (i = paramInt + 1; (i < paramArrayOfByte.length) && (paramArrayOfByte[i] >= 48) && (paramArrayOfByte[i] <= 57); i++);
    for (long l = 1024L * Integer.parseInt(new String(paramArrayOfByte, 0, paramInt, i - paramInt)); ; l = 0L)
    {
      return l;
      paramInt++;
      break;
    }
  }

  private static boolean a(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    int i = paramString.length();
    int j = paramInt + i;
    int k = paramArrayOfByte.length;
    boolean bool = false;
    if (j >= k);
    while (true)
    {
      return bool;
      for (int m = 0; ; m++)
      {
        if (m >= i)
          break label68;
        int n = paramArrayOfByte[(paramInt + m)];
        int i1 = paramString.charAt(m);
        bool = false;
        if (n != i1)
          break;
      }
      label68: bool = true;
    }
  }

  public final List a(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    ArrayList localArrayList = new ArrayList();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if ((!this.a.containsKey(localRunningAppProcessInfo.processName)) || (!this.a.containsKey(localRunningAppProcessInfo.processName)))
          try
          {
            localArrayList.add(localPackageManager.getApplicationInfo(localRunningAppProcessInfo.processName, 0));
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
          }
      }
    }
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.p
 * JD-Core Version:    0.6.2
 */