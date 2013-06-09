package org.antivirus.core.scanners;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;

public class aa extends j
{
  public static final Uri g = Uri.parse("content://sms/");
  public static final String[] h = { "_id" };
  private static final String[] i = { "body" };
  private static boolean j = false;
  private ab k;

  public aa(EngineSettings paramEngineSettings)
  {
    super(paramEngineSettings, null, null);
    this.a = new ScannerSmsResult();
  }

  public static void a(Context paramContext, g paramg, ScannerSmsResult paramScannerSmsResult, String paramString1, String paramString2)
  {
    ArrayList localArrayList = paramScannerSmsResult.b;
    if ((paramContext == null) || (localArrayList == null) || (localArrayList.size() == 0) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return;
    long l = System.currentTimeMillis();
    if (!paramString1.startsWith("--Suspicious--"))
      paramString1 = "--Suspicious--" + paramString1;
    if (!paramString1.endsWith("avgmobilation.com"))
      paramString2 = paramString2 + " avgmobilation.com";
    j = true;
    int n;
    for (int m = 0; ; m = n)
      if (localArrayList.size() > 0)
      {
        n = m + 1;
        a(paramContext, ((Long)localArrayList.remove(0)).longValue(), paramString1, paramString2);
        if ((n % 10 != 0) || (System.currentTimeMillis() - l <= 10000L));
      }
      else
      {
        j = false;
        if ((paramg == null) || (paramg.g == null))
          break;
        paramg.g.b();
        paramg.b(paramContext);
        break;
      }
  }

  // ERROR //
  private static boolean a(Context paramContext, long paramLong, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 132	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 5
    //   6: iconst_1
    //   7: anewarray 27	java/lang/String
    //   10: astore 10
    //   12: aload 10
    //   14: iconst_0
    //   15: lload_1
    //   16: invokestatic 136	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   19: aastore
    //   20: aload 5
    //   22: getstatic 25	org/antivirus/core/scanners/aa:g	Landroid/net/Uri;
    //   25: getstatic 35	org/antivirus/core/scanners/aa:i	[Ljava/lang/String;
    //   28: ldc 138
    //   30: aload 10
    //   32: aconst_null
    //   33: invokevirtual 144	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore 11
    //   38: aload 11
    //   40: astore 7
    //   42: aload 7
    //   44: ifnull +103 -> 147
    //   47: aload 7
    //   49: invokeinterface 150 1 0
    //   54: pop
    //   55: aload 7
    //   57: iconst_0
    //   58: invokeinterface 154 2 0
    //   63: astore 13
    //   65: new 81	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 98	java/lang/StringBuilder:<init>	()V
    //   72: aload_3
    //   73: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc 156
    //   78: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: aload 13
    //   83: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: ldc 156
    //   88: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: aload 4
    //   93: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: astore 14
    //   101: getstatic 25	org/antivirus/core/scanners/aa:g	Landroid/net/Uri;
    //   104: astore 15
    //   106: new 158	android/content/ContentValues
    //   109: dup
    //   110: invokespecial 159	android/content/ContentValues:<init>	()V
    //   113: astore 16
    //   115: aload 16
    //   117: ldc 33
    //   119: aload 14
    //   121: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   124: aload 16
    //   126: ldc 165
    //   128: ldc 167
    //   130: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   133: aload 5
    //   135: aload 15
    //   137: aload 16
    //   139: ldc 138
    //   141: aload 10
    //   143: invokevirtual 171	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   146: pop
    //   147: aload 7
    //   149: ifnull +80 -> 229
    //   152: aload 7
    //   154: invokeinterface 174 1 0
    //   159: iconst_1
    //   160: istore 9
    //   162: iload 9
    //   164: ireturn
    //   165: astore 8
    //   167: aconst_null
    //   168: astore 7
    //   170: aload 8
    //   172: invokestatic 180	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   175: aload 7
    //   177: ifnull +46 -> 223
    //   180: aload 7
    //   182: invokeinterface 174 1 0
    //   187: iconst_0
    //   188: istore 9
    //   190: goto -28 -> 162
    //   193: astore 6
    //   195: aconst_null
    //   196: astore 7
    //   198: aload 7
    //   200: ifnull +10 -> 210
    //   203: aload 7
    //   205: invokeinterface 174 1 0
    //   210: aload 6
    //   212: athrow
    //   213: astore 6
    //   215: goto -17 -> 198
    //   218: astore 8
    //   220: goto -50 -> 170
    //   223: iconst_0
    //   224: istore 9
    //   226: goto -64 -> 162
    //   229: iconst_1
    //   230: istore 9
    //   232: goto -70 -> 162
    //
    // Exception table:
    //   from	to	target	type
    //   6	38	165	java/lang/Exception
    //   6	38	193	finally
    //   47	147	213	finally
    //   170	175	213	finally
    //   47	147	218	java/lang/Exception
  }

  private boolean a(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (!bool1)
    {
      ab localab1 = this.k;
      bool2 = false;
      if (localab1 != null);
    }
    else
    {
      return bool2;
    }
    while (true)
    {
      int n;
      int i1;
      int i2;
      boolean bool5;
      try
      {
        if (paramString.startsWith("--Suspicious--"))
        {
          boolean bool6 = paramString.endsWith("avgmobilation.com");
          bool2 = false;
          if (bool6)
            break;
        }
        String str = paramString.toLowerCase();
        ab localab2 = this.k;
        if ((localab2.a == null) || (localab2.a.size() <= 0))
          break label322;
        m = 1;
        if (m == 0)
          break label328;
        int i3 = -1 + this.k.a.size();
        bool3 = false;
        if ((!bool3) && (i3 >= 0))
        {
          bool3 = str.contains((CharSequence)this.k.a.get(i3));
          i3--;
          continue;
        }
        ab localab3 = this.k;
        if ((localab3.b == null) || (localab3.b.size() <= 0))
          break label340;
        n = 1;
        if ((n != 0) && (!bool3))
        {
          i1 = -1 + this.k.b.size();
          if ((!bool3) && (i1 >= 0))
          {
            List localList = (List)this.k.b.get(i1);
            i2 = localList.size();
            bool5 = true;
            label235: if ((i2 < 0) || (!bool5))
              break label352;
            if ((!bool5) || (!str.contains((CharSequence)localList.get(i2))))
              break label346;
            bool5 = true;
            break label334;
          }
        }
        bool2 = false;
        if (!bool3)
          break;
        if (!c(str))
        {
          boolean bool4 = b(str);
          bool2 = false;
          if (!bool4)
            break;
        }
        bool2 = true;
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        bool2 = false;
      }
      break;
      label322: int m = 0;
      continue;
      label328: boolean bool3 = false;
      continue;
      while (true)
      {
        label334: i2--;
        break label235;
        label340: n = 0;
        break;
        label346: bool5 = false;
      }
      label352: i1--;
      bool3 = bool5;
    }
  }

  public static boolean b()
  {
    return j;
  }

  private static boolean b(String paramString)
  {
    try
    {
      if ((!paramString.matches("(?s).*http:\\/\\/\\w+\\.\\w+.*")) && (!paramString.matches("(?s).*http:\\/\\/\\d+\\.\\d+\\.\\d+\\.\\d+.*")) && (!paramString.matches("(?s).*www\\.\\w{3,}\\.[com|org|net].*")) && (!paramString.matches("(?s).*[a-zA-Z0-9\\-]{2,}\\.[a-zA-Z0-9\\-]{2,}\\/[a-zA-Z0-9\\_]{4,}")))
      {
        boolean bool2 = paramString.matches("(?s).*\\w+\\@\\w+\\.\\w{2,}");
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        boolean bool1 = false;
      }
    }
  }

  private static boolean c(String paramString)
  {
    try
    {
      if (!paramString.matches("(?s).*([0-9\\,\\:\\.]){5,}.*"))
      {
        boolean bool2 = paramString.matches("(?s).*\\d+\\.\\d+.\\/mo*");
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        boolean bool1 = false;
      }
    }
  }

  // ERROR //
  public final void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 50	org/antivirus/core/scanners/aa:a	Lorg/antivirus/core/scanners/d;
    //   4: checkcast 44	org/antivirus/core/scanners/ScannerSmsResult
    //   7: astore_2
    //   8: aload_2
    //   9: getfield 55	org/antivirus/core/scanners/ScannerSmsResult:b	Ljava/util/ArrayList;
    //   12: invokevirtual 227	java/util/ArrayList:clear	()V
    //   15: new 229	org/antivirus/core/c/b
    //   18: dup
    //   19: invokespecial 230	org/antivirus/core/c/b:<init>	()V
    //   22: astore_3
    //   23: aload_0
    //   24: new 187	org/antivirus/core/scanners/ab
    //   27: dup
    //   28: aload_0
    //   29: aload_3
    //   30: aload_1
    //   31: getstatic 236	org/antivirus/core/c/d:d	Lorg/antivirus/core/c/d;
    //   34: invokevirtual 239	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;)Ljava/util/ArrayList;
    //   37: invokespecial 242	org/antivirus/core/scanners/ab:<init>	(Lorg/antivirus/core/scanners/aa;Ljava/util/ArrayList;)V
    //   40: putfield 182	org/antivirus/core/scanners/aa:k	Lorg/antivirus/core/scanners/ab;
    //   43: aload_3
    //   44: invokevirtual 244	org/antivirus/core/c/b:a	()V
    //   47: aload_1
    //   48: invokevirtual 132	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   51: getstatic 25	org/antivirus/core/scanners/aa:g	Landroid/net/Uri;
    //   54: aconst_null
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: invokevirtual 144	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore 7
    //   63: aload 7
    //   65: astore 5
    //   67: aload 5
    //   69: ifnull +109 -> 178
    //   72: aload 5
    //   74: ldc 33
    //   76: invokeinterface 248 2 0
    //   81: istore 8
    //   83: aload 5
    //   85: ldc 29
    //   87: invokeinterface 248 2 0
    //   92: istore 9
    //   94: aload 5
    //   96: invokeinterface 150 1 0
    //   101: ifeq +77 -> 178
    //   104: aload_0
    //   105: getfield 251	org/antivirus/core/scanners/j:f	Z
    //   108: ifne +70 -> 178
    //   111: aload_0
    //   112: aload 5
    //   114: iload 8
    //   116: invokeinterface 154 2 0
    //   121: invokespecial 253	org/antivirus/core/scanners/aa:a	(Ljava/lang/String;)Z
    //   124: ifeq -30 -> 94
    //   127: aload_2
    //   128: iconst_0
    //   129: putfield 255	org/antivirus/core/scanners/ScannerSmsResult:a	Z
    //   132: aload_2
    //   133: getfield 55	org/antivirus/core/scanners/ScannerSmsResult:b	Ljava/util/ArrayList;
    //   136: aload 5
    //   138: iload 9
    //   140: invokeinterface 154 2 0
    //   145: invokestatic 259	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   148: invokestatic 262	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   151: invokevirtual 266	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   154: pop
    //   155: goto -61 -> 94
    //   158: astore 4
    //   160: aload 4
    //   162: invokestatic 180	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   165: aload 5
    //   167: ifnull +10 -> 177
    //   170: aload 5
    //   172: invokeinterface 174 1 0
    //   177: return
    //   178: aload 5
    //   180: ifnull -3 -> 177
    //   183: aload 5
    //   185: invokeinterface 174 1 0
    //   190: goto -13 -> 177
    //   193: astore 6
    //   195: aconst_null
    //   196: astore 5
    //   198: aload 5
    //   200: ifnull +10 -> 210
    //   203: aload 5
    //   205: invokeinterface 174 1 0
    //   210: aload 6
    //   212: athrow
    //   213: astore 6
    //   215: goto -17 -> 198
    //   218: astore 4
    //   220: aconst_null
    //   221: astore 5
    //   223: goto -63 -> 160
    //
    // Exception table:
    //   from	to	target	type
    //   72	155	158	java/lang/Exception
    //   15	63	193	finally
    //   72	155	213	finally
    //   160	165	213	finally
    //   15	63	218	java/lang/Exception
  }

  // ERROR //
  public final void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 50	org/antivirus/core/scanners/aa:a	Lorg/antivirus/core/scanners/d;
    //   4: checkcast 44	org/antivirus/core/scanners/ScannerSmsResult
    //   7: astore_2
    //   8: aload_2
    //   9: getfield 55	org/antivirus/core/scanners/ScannerSmsResult:b	Ljava/util/ArrayList;
    //   12: invokevirtual 227	java/util/ArrayList:clear	()V
    //   15: new 229	org/antivirus/core/c/b
    //   18: dup
    //   19: invokespecial 230	org/antivirus/core/c/b:<init>	()V
    //   22: astore_3
    //   23: aload_0
    //   24: new 187	org/antivirus/core/scanners/ab
    //   27: dup
    //   28: aload_0
    //   29: aload_3
    //   30: aload_1
    //   31: getstatic 236	org/antivirus/core/c/d:d	Lorg/antivirus/core/c/d;
    //   34: invokevirtual 239	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;)Ljava/util/ArrayList;
    //   37: invokespecial 242	org/antivirus/core/scanners/ab:<init>	(Lorg/antivirus/core/scanners/aa;Ljava/util/ArrayList;)V
    //   40: putfield 182	org/antivirus/core/scanners/aa:k	Lorg/antivirus/core/scanners/ab;
    //   43: aload_3
    //   44: invokevirtual 244	org/antivirus/core/c/b:a	()V
    //   47: aload_1
    //   48: invokevirtual 132	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   51: getstatic 25	org/antivirus/core/scanners/aa:g	Landroid/net/Uri;
    //   54: iconst_1
    //   55: anewarray 27	java/lang/String
    //   58: dup
    //   59: iconst_0
    //   60: ldc_w 268
    //   63: aastore
    //   64: ldc_w 270
    //   67: aconst_null
    //   68: aconst_null
    //   69: invokevirtual 144	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   72: astore 7
    //   74: aload 7
    //   76: astore 5
    //   78: aload 5
    //   80: ifnull +109 -> 189
    //   83: aload 5
    //   85: ldc 33
    //   87: invokeinterface 248 2 0
    //   92: istore 8
    //   94: aload 5
    //   96: ldc 29
    //   98: invokeinterface 248 2 0
    //   103: istore 9
    //   105: aload 5
    //   107: invokeinterface 150 1 0
    //   112: ifeq +77 -> 189
    //   115: aload_0
    //   116: getfield 251	org/antivirus/core/scanners/j:f	Z
    //   119: ifne +70 -> 189
    //   122: aload_0
    //   123: aload 5
    //   125: iload 8
    //   127: invokeinterface 154 2 0
    //   132: invokespecial 253	org/antivirus/core/scanners/aa:a	(Ljava/lang/String;)Z
    //   135: ifeq -30 -> 105
    //   138: aload_2
    //   139: iconst_0
    //   140: putfield 255	org/antivirus/core/scanners/ScannerSmsResult:a	Z
    //   143: aload_2
    //   144: getfield 55	org/antivirus/core/scanners/ScannerSmsResult:b	Ljava/util/ArrayList;
    //   147: aload 5
    //   149: iload 9
    //   151: invokeinterface 154 2 0
    //   156: invokestatic 259	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   159: invokestatic 262	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   162: invokevirtual 266	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   165: pop
    //   166: goto -61 -> 105
    //   169: astore 4
    //   171: aload 4
    //   173: invokestatic 180	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   176: aload 5
    //   178: ifnull +10 -> 188
    //   181: aload 5
    //   183: invokeinterface 174 1 0
    //   188: return
    //   189: aload 5
    //   191: ifnull -3 -> 188
    //   194: aload 5
    //   196: invokeinterface 174 1 0
    //   201: goto -13 -> 188
    //   204: astore 6
    //   206: aconst_null
    //   207: astore 5
    //   209: aload 5
    //   211: ifnull +10 -> 221
    //   214: aload 5
    //   216: invokeinterface 174 1 0
    //   221: aload 6
    //   223: athrow
    //   224: astore 6
    //   226: goto -17 -> 209
    //   229: astore 4
    //   231: aconst_null
    //   232: astore 5
    //   234: goto -63 -> 171
    //
    // Exception table:
    //   from	to	target	type
    //   83	166	169	java/lang/Exception
    //   15	74	204	finally
    //   83	166	224	finally
    //   171	176	224	finally
    //   15	74	229	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.aa
 * JD-Core Version:    0.6.2
 */