package com.antivirus.core.scanners;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.antivirus.core.e.d;
import java.util.ArrayList;
import java.util.List;

public class ad extends k
{
  public static final Uri f = Uri.parse("content://sms/inbox");
  private static final String[] g = { "body" };
  private static final String[] h = { "_id", "body", "address", "date" };
  private static boolean i = false;
  private ae j;

  public ad(com.antivirus.core.b paramb)
  {
    super(paramb, null, null, null);
    this.a = new ScannerSmsResult();
  }

  // ERROR //
  public static String a(Context paramContext, long paramLong, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 63	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 5
    //   6: iconst_1
    //   7: anewarray 27	java/lang/String
    //   10: astore 11
    //   12: aload 11
    //   14: iconst_0
    //   15: lload_1
    //   16: invokestatic 67	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   19: aastore
    //   20: aload 5
    //   22: getstatic 25	com/antivirus/core/scanners/ad:f	Landroid/net/Uri;
    //   25: getstatic 31	com/antivirus/core/scanners/ad:g	[Ljava/lang/String;
    //   28: ldc 69
    //   30: aload 11
    //   32: aconst_null
    //   33: invokevirtual 75	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore 12
    //   38: aload 12
    //   40: astore 7
    //   42: aload 7
    //   44: ifnull +225 -> 269
    //   47: aload 7
    //   49: invokeinterface 81 1 0
    //   54: pop
    //   55: aload 7
    //   57: iconst_0
    //   58: invokeinterface 85 2 0
    //   63: astore 14
    //   65: aload 14
    //   67: aload_3
    //   68: invokevirtual 89	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   71: istore 15
    //   73: iload 15
    //   75: ifeq +22 -> 97
    //   78: aload 7
    //   80: ifnull +10 -> 90
    //   83: aload 7
    //   85: invokeinterface 92 1 0
    //   90: aload 14
    //   92: astore 10
    //   94: aload 10
    //   96: areturn
    //   97: new 94	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   104: aload_3
    //   105: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: ldc 101
    //   110: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload 14
    //   115: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: ldc 101
    //   120: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: aload 4
    //   125: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: astore 16
    //   133: getstatic 25	com/antivirus/core/scanners/ad:f	Landroid/net/Uri;
    //   136: astore 17
    //   138: new 107	android/content/ContentValues
    //   141: dup
    //   142: invokespecial 108	android/content/ContentValues:<init>	()V
    //   145: astore 18
    //   147: aload 18
    //   149: ldc 29
    //   151: aload 16
    //   153: invokevirtual 112	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: aload 18
    //   158: ldc 114
    //   160: ldc 116
    //   162: invokevirtual 112	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   165: aload 5
    //   167: aload 17
    //   169: aload 18
    //   171: ldc 69
    //   173: aload 11
    //   175: invokevirtual 120	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   178: pop
    //   179: aload 16
    //   181: astore 10
    //   183: aload 7
    //   185: ifnull -91 -> 94
    //   188: aload 7
    //   190: invokeinterface 92 1 0
    //   195: goto -101 -> 94
    //   198: astore 8
    //   200: aconst_null
    //   201: astore 9
    //   203: aload 8
    //   205: invokestatic 125	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   208: aload 9
    //   210: ifnull +10 -> 220
    //   213: aload 9
    //   215: invokeinterface 92 1 0
    //   220: aconst_null
    //   221: astore 10
    //   223: goto -129 -> 94
    //   226: astore 6
    //   228: aconst_null
    //   229: astore 7
    //   231: aload 7
    //   233: ifnull +10 -> 243
    //   236: aload 7
    //   238: invokeinterface 92 1 0
    //   243: aload 6
    //   245: athrow
    //   246: astore 6
    //   248: goto -17 -> 231
    //   251: astore 6
    //   253: aload 9
    //   255: astore 7
    //   257: goto -26 -> 231
    //   260: astore 8
    //   262: aload 7
    //   264: astore 9
    //   266: goto -63 -> 203
    //   269: aconst_null
    //   270: astore 10
    //   272: goto -89 -> 183
    //
    // Exception table:
    //   from	to	target	type
    //   6	38	198	java/lang/Exception
    //   6	38	226	finally
    //   47	73	246	finally
    //   97	179	246	finally
    //   203	208	251	finally
    //   47	73	260	java/lang/Exception
    //   97	179	260	java/lang/Exception
  }

  private void a(Context paramContext, Cursor paramCursor, boolean paramBoolean1, boolean paramBoolean2)
  {
    ScannerSmsResult localScannerSmsResult = (ScannerSmsResult)this.a;
    localScannerSmsResult.b.clear();
    if (paramBoolean2)
      return;
    while (true)
    {
      try
      {
        if (!paramContext.getPackageManager().hasSystemFeature("android.hardware.telephony"))
        {
          String str3 = ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number();
          if (str3 == null);
        }
        else
        {
          k = 1;
          if (k != 0)
            continue;
          if (paramCursor == null)
            break;
          paramCursor.close();
          break;
        }
        int k = 0;
        continue;
        com.antivirus.core.e.b localb = new com.antivirus.core.e.b();
        this.j = new ae(this, localb.a(paramContext, d.d));
        localb.a();
        if (paramCursor != null)
          if ((paramCursor.moveToNext()) && (!b()))
          {
            String str1 = paramCursor.getString(paramCursor.getColumnIndex("body"));
            long l1 = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
            String str2 = paramCursor.getString(paramCursor.getColumnIndex("address"));
            long l2 = paramCursor.getLong(paramCursor.getColumnIndex("date"));
            boolean bool = a(str1);
            if ((!a(paramContext, l1, str2, str1, paramBoolean1, l2)) || (!bool))
              continue;
            i = true;
            localScannerSmsResult.a = false;
            localScannerSmsResult.b.add(Long.valueOf(l1));
            a(paramContext, l1, str2, str1, l2);
            i = false;
            continue;
          }
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        if (paramCursor == null)
          break;
        continue;
      }
      finally
      {
        if (paramCursor != null)
          paramCursor.close();
      }
      if (paramCursor == null)
        break;
    }
  }

  private boolean a(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (!bool1)
    {
      ae localae = this.j;
      bool2 = false;
      if (localae != null);
    }
    else
    {
      return bool2;
    }
    while (true)
    {
      int k;
      boolean bool6;
      try
      {
        if (paramString.startsWith("--Suspicious--"))
        {
          boolean bool7 = paramString.endsWith("avgmobilation.com");
          bool2 = false;
          if (bool7)
            break;
        }
        String str = paramString.toLowerCase();
        if (!this.j.a())
          break label281;
        int n = -1 + this.j.a.size();
        bool3 = false;
        if ((!bool3) && (n > -1))
        {
          bool3 = str.contains((CharSequence)this.j.a.get(n));
          n--;
          continue;
        }
        if ((this.j.b()) && (!bool3))
        {
          k = -1 + this.j.b.size();
          if ((!bool3) && (k > -1))
          {
            List localList = (List)this.j.b.get(k);
            int m = localList.size();
            bool6 = true;
            if ((m <= -1) || (!bool6))
              break label287;
            bool6 = str.contains((CharSequence)localList.get(m));
            m--;
            continue;
          }
        }
        if (bool3)
          if (!c(str))
          {
            boolean bool5 = b(str);
            if (!bool5);
          }
          else
          {
            bool4 = true;
            bool2 = bool4;
            break;
          }
        boolean bool4 = false;
        continue;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        bool2 = false;
      }
      break;
      label281: boolean bool3 = false;
      continue;
      label287: k--;
      bool3 = bool6;
    }
  }

  public static boolean a(boolean paramBoolean)
  {
    i = paramBoolean;
    return paramBoolean;
  }

  private boolean b(String paramString)
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
        com.avg.toolkit.f.a.a(localException);
        boolean bool1 = false;
      }
    }
  }

  public static boolean c()
  {
    return i;
  }

  private boolean c(String paramString)
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
        com.avg.toolkit.f.a.a(localException);
        boolean bool1 = false;
      }
    }
  }

  protected void a(Context paramContext, long paramLong1, String paramString1, String paramString2, long paramLong2)
  {
    com.antivirus.core.b.a.b localb = com.antivirus.core.b.a.b.a(paramContext);
    if (paramString2.length() > 50);
    for (String str = paramString2.substring(0, 50) + "..."; ; str = paramString2)
    {
      localb.a(paramLong1, 1, str, paramString1, paramLong2);
      return;
    }
  }

  public void a(Context paramContext, h paramh, ScannerSmsResult paramScannerSmsResult, String paramString1, String paramString2)
  {
    ArrayList localArrayList = paramScannerSmsResult.b;
    if ((paramContext == null) || (localArrayList == null) || (localArrayList.size() == 0) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return;
    long l = System.currentTimeMillis();
    if (!paramString1.startsWith("--Suspicious--"))
      paramString1 = "--Suspicious--" + paramString1;
    if (!paramString1.endsWith("avgmobilation.com"))
      paramString2 = paramString2 + " " + "avgmobilation.com";
    i = true;
    int m;
    for (int k = 0; ; k = m)
      if (localArrayList.size() > 0)
      {
        m = k + 1;
        a(paramContext, ((Long)localArrayList.remove(0)).longValue(), paramString1, paramString2);
        if ((m % 10 != 0) || (System.currentTimeMillis() - l <= 10000L));
      }
      else
      {
        i = false;
        if ((paramh == null) || (paramh.g == null))
          break;
        paramh.g.b();
        paramh.b(paramContext);
        break;
      }
  }

  public void a(Context paramContext, boolean paramBoolean)
  {
    a(paramContext, paramContext.getContentResolver().query(f, h, null, null, null), false, paramBoolean);
  }

  protected boolean a(Context paramContext, long paramLong1, String paramString1, String paramString2, boolean paramBoolean, long paramLong2)
  {
    boolean bool;
    if (paramString1 == null)
      bool = false;
    while (true)
    {
      return bool;
      com.antivirus.core.b.a.b localb = com.antivirus.core.b.a.b.a(paramContext);
      if (3 == localb.a(paramString1).a())
      {
        localb.a(paramLong1, 3, paramString2, paramString1, paramLong2);
        bool = false;
      }
      else
      {
        int k = localb.a(paramLong1);
        if ((4 != k) && ((!paramBoolean) || (1 != k)))
          bool = true;
        else
          bool = false;
      }
    }
  }

  public void b(Context paramContext, boolean paramBoolean)
  {
    a(paramContext, paramContext.getContentResolver().query(f, h, "read = 0", null, "date desc limit 10"), true, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.ad
 * JD-Core Version:    0.6.2
 */