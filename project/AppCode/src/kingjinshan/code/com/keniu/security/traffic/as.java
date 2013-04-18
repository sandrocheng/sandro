package com.keniu.security.traffic;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.telephony.SmsManager;
import com.ijinshan.kpref.t;

public final class as
{
  private static final String a = "10086";
  private static final String b = "10010";
  private static final String c = "10001";
  private static final String d = "CXGLL";
  private static final String e = "CXLL";
  private static final String f = "108";
  private static String g;
  private static String h;
  private static String i;
  private static String j;

  public static String a(Context paramContext)
  {
    f(paramContext);
    return i;
  }

  public static boolean a()
  {
    try
    {
      SmsManager.getDefault().sendTextMessage(i, null, j, null, null);
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    i = paramString1;
    j = paramString2;
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putString(paramContext.getString(2131428305), i);
    localEditor.putString(paramContext.getString(2131428306), j);
    localEditor.commit();
    return true;
  }

  public static String b(Context paramContext)
  {
    f(paramContext);
    return j;
  }

  private static String c(Context paramContext)
  {
    f(paramContext);
    return g;
  }

  private static String d(Context paramContext)
  {
    f(paramContext);
    return h;
  }

  private static void e(Context paramContext)
  {
    SharedPreferences localSharedPreferences = t.b(paramContext);
    String str1 = localSharedPreferences.getString(paramContext.getString(2131428305), "");
    if ((str1 != null) && (str1.length() != 0))
      i = str1;
    String str2 = localSharedPreferences.getString(paramContext.getString(2131428306), "");
    int k;
    if (str2 != null)
    {
      k = 1;
      if (str2.length() == 0)
        break label86;
    }
    label86: for (int m = 1; ; m = 0)
    {
      if ((k & m) != 0)
        j = str2;
      return;
      k = 0;
      break;
    }
  }

  // ERROR //
  private static void f(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 83	com/keniu/security/traffic/as:g	Ljava/lang/String;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: invokestatic 58	com/ijinshan/kpref/t:b	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   19: astore_3
    //   20: aload_3
    //   21: aload_0
    //   22: ldc 65
    //   24: invokevirtual 71	android/content/Context:getString	(I)Ljava/lang/String;
    //   27: ldc 87
    //   29: invokeinterface 90 3 0
    //   34: astore 4
    //   36: aload 4
    //   38: ifnull +16 -> 54
    //   41: aload 4
    //   43: invokevirtual 96	java/lang/String:length	()I
    //   46: ifeq +8 -> 54
    //   49: aload 4
    //   51: putstatic 37	com/keniu/security/traffic/as:i	Ljava/lang/String;
    //   54: aload_3
    //   55: aload_0
    //   56: ldc 78
    //   58: invokevirtual 71	android/content/Context:getString	(I)Ljava/lang/String;
    //   61: ldc 87
    //   63: invokeinterface 90 3 0
    //   68: astore 5
    //   70: aload 5
    //   72: ifnull +177 -> 249
    //   75: iconst_1
    //   76: istore 6
    //   78: aload 5
    //   80: invokevirtual 96	java/lang/String:length	()I
    //   83: ifeq +172 -> 255
    //   86: iconst_1
    //   87: istore 7
    //   89: iload 6
    //   91: iload 7
    //   93: iand
    //   94: ifeq +8 -> 102
    //   97: aload 5
    //   99: putstatic 48	com/keniu/security/traffic/as:j	Ljava/lang/String;
    //   102: aload_0
    //   103: ldc 98
    //   105: invokevirtual 102	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   108: checkcast 104	android/telephony/TelephonyManager
    //   111: invokevirtual 108	android/telephony/TelephonyManager:getSubscriberId	()Ljava/lang/String;
    //   114: astore 9
    //   116: aload 9
    //   118: ifnull -107 -> 11
    //   121: aload 9
    //   123: ldc 110
    //   125: invokevirtual 114	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   128: ifne +13 -> 141
    //   131: aload 9
    //   133: ldc 116
    //   135: invokevirtual 114	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   138: ifeq +34 -> 172
    //   141: ldc 8
    //   143: putstatic 83	com/keniu/security/traffic/as:g	Ljava/lang/String;
    //   146: ldc 17
    //   148: putstatic 85	com/keniu/security/traffic/as:h	Ljava/lang/String;
    //   151: getstatic 37	com/keniu/security/traffic/as:i	Ljava/lang/String;
    //   154: ifnonnull -143 -> 11
    //   157: getstatic 83	com/keniu/security/traffic/as:g	Ljava/lang/String;
    //   160: putstatic 37	com/keniu/security/traffic/as:i	Ljava/lang/String;
    //   163: getstatic 85	com/keniu/security/traffic/as:h	Ljava/lang/String;
    //   166: putstatic 48	com/keniu/security/traffic/as:j	Ljava/lang/String;
    //   169: goto -158 -> 11
    //   172: aload 9
    //   174: ldc 118
    //   176: invokevirtual 114	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   179: ifne +13 -> 192
    //   182: aload 9
    //   184: ldc 120
    //   186: invokevirtual 114	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   189: ifeq +22 -> 211
    //   192: ldc 11
    //   194: putstatic 83	com/keniu/security/traffic/as:g	Ljava/lang/String;
    //   197: ldc 20
    //   199: putstatic 85	com/keniu/security/traffic/as:h	Ljava/lang/String;
    //   202: goto -51 -> 151
    //   205: astore_1
    //   206: ldc 2
    //   208: monitorexit
    //   209: aload_1
    //   210: athrow
    //   211: aload 9
    //   213: ldc 122
    //   215: invokevirtual 114	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   218: ifne +13 -> 231
    //   221: aload 9
    //   223: ldc 124
    //   225: invokevirtual 114	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   228: ifeq -77 -> 151
    //   231: ldc 14
    //   233: putstatic 83	com/keniu/security/traffic/as:g	Ljava/lang/String;
    //   236: ldc 23
    //   238: putstatic 85	com/keniu/security/traffic/as:h	Ljava/lang/String;
    //   241: goto -90 -> 151
    //   244: astore 8
    //   246: goto -235 -> 11
    //   249: iconst_0
    //   250: istore 6
    //   252: goto -174 -> 78
    //   255: iconst_0
    //   256: istore 7
    //   258: goto -169 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   3	7	205	finally
    //   15	102	205	finally
    //   102	202	205	finally
    //   211	241	205	finally
    //   102	202	244	java/lang/Exception
    //   211	241	244	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.as
 * JD-Core Version:    0.6.2
 */