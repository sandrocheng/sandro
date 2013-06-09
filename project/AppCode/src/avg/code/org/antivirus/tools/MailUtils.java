package org.antivirus.tools;

import android.content.Context;
import android.text.TextUtils;
import org.antivirus.core.compatibility.AndroidVersionCompatibility;
import org.antivirus.wipe.AccountWrapper;

public class MailUtils
{
  // ERROR //
  private static String a(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: invokestatic 18	org/antivirus/AVSettings:getMainMailAccount	()Ljava/lang/String;
    //   5: astore_2
    //   6: aload_2
    //   7: invokestatic 24	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   10: ifeq +367 -> 377
    //   13: iconst_1
    //   14: anewarray 26	java/lang/String
    //   17: dup
    //   18: iconst_0
    //   19: ldc 28
    //   21: aastore
    //   22: astore 4
    //   24: aload_0
    //   25: invokevirtual 34	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   28: ldc 36
    //   30: invokestatic 42	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   33: aload 4
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: invokevirtual 48	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   41: astore 16
    //   43: aload 16
    //   45: astore 7
    //   47: iconst_0
    //   48: istore 8
    //   50: aload 7
    //   52: ifnull +57 -> 109
    //   55: aload 7
    //   57: invokeinterface 54 1 0
    //   62: ifeq +47 -> 109
    //   65: iload 8
    //   67: ifne +42 -> 109
    //   70: aload 7
    //   72: iconst_0
    //   73: invokeinterface 58 2 0
    //   78: ldc 60
    //   80: invokevirtual 63	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   83: istore 17
    //   85: iload 17
    //   87: ifeq -37 -> 50
    //   90: aload 7
    //   92: iconst_0
    //   93: invokeinterface 58 2 0
    //   98: astore 18
    //   100: aload 18
    //   102: astore_2
    //   103: iconst_1
    //   104: istore 8
    //   106: goto -56 -> 50
    //   109: aload 7
    //   111: ifnull +259 -> 370
    //   114: aload 7
    //   116: invokeinterface 66 1 0
    //   121: iload 8
    //   123: istore 9
    //   125: iload 9
    //   127: ifne +238 -> 365
    //   130: iconst_1
    //   131: anewarray 26	java/lang/String
    //   134: dup
    //   135: iconst_0
    //   136: ldc 68
    //   138: aastore
    //   139: astore 10
    //   141: aload_0
    //   142: invokevirtual 34	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   145: ldc 70
    //   147: invokestatic 42	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   150: aload 10
    //   152: aconst_null
    //   153: aconst_null
    //   154: aconst_null
    //   155: invokevirtual 48	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   158: astore_1
    //   159: aload_1
    //   160: ifnonnull +196 -> 356
    //   163: ldc 72
    //   165: astore_3
    //   166: aload_1
    //   167: ifnull +9 -> 176
    //   170: aload_1
    //   171: invokeinterface 66 1 0
    //   176: aload_3
    //   177: areturn
    //   178: astore 6
    //   180: aconst_null
    //   181: astore 7
    //   183: iconst_0
    //   184: istore 8
    //   186: aload 6
    //   188: invokestatic 78	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   191: aload 7
    //   193: ifnull +177 -> 370
    //   196: aload 7
    //   198: invokeinterface 66 1 0
    //   203: iload 8
    //   205: istore 9
    //   207: goto -82 -> 125
    //   210: astore 5
    //   212: aload_1
    //   213: ifnull +9 -> 222
    //   216: aload_1
    //   217: invokeinterface 66 1 0
    //   222: aload 5
    //   224: athrow
    //   225: aload_1
    //   226: invokeinterface 54 1 0
    //   231: ifeq +41 -> 272
    //   234: iload 14
    //   236: ifne +36 -> 272
    //   239: aload_1
    //   240: iconst_0
    //   241: invokeinterface 58 2 0
    //   246: ldc 60
    //   248: invokevirtual 63	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   251: ifeq -26 -> 225
    //   254: aload_1
    //   255: iconst_0
    //   256: invokeinterface 58 2 0
    //   261: astore 15
    //   263: aload 15
    //   265: astore_3
    //   266: iconst_1
    //   267: istore 14
    //   269: goto -44 -> 225
    //   272: aload_1
    //   273: ifnull +9 -> 282
    //   276: aload_1
    //   277: invokeinterface 66 1 0
    //   282: aload_3
    //   283: invokestatic 82	org/antivirus/AVSettings:setMainMailAccount	(Ljava/lang/String;)V
    //   286: goto -110 -> 176
    //   289: astore 12
    //   291: aload 12
    //   293: astore 13
    //   295: aload_2
    //   296: astore_3
    //   297: aload 13
    //   299: invokestatic 78	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   302: aload_1
    //   303: ifnull -21 -> 282
    //   306: aload_1
    //   307: invokeinterface 66 1 0
    //   312: goto -30 -> 282
    //   315: astore 11
    //   317: aload_1
    //   318: ifnull +9 -> 327
    //   321: aload_1
    //   322: invokeinterface 66 1 0
    //   327: aload 11
    //   329: athrow
    //   330: astore 13
    //   332: goto -35 -> 297
    //   335: astore 5
    //   337: aload 7
    //   339: astore_1
    //   340: goto -128 -> 212
    //   343: astore 6
    //   345: goto -159 -> 186
    //   348: astore 6
    //   350: iconst_1
    //   351: istore 8
    //   353: goto -167 -> 186
    //   356: iload 9
    //   358: istore 14
    //   360: aload_2
    //   361: astore_3
    //   362: goto -137 -> 225
    //   365: aload_2
    //   366: astore_3
    //   367: goto -85 -> 282
    //   370: iload 8
    //   372: istore 9
    //   374: goto -249 -> 125
    //   377: aload_2
    //   378: astore_3
    //   379: goto -203 -> 176
    //
    // Exception table:
    //   from	to	target	type
    //   13	43	178	java/lang/Exception
    //   13	43	210	finally
    //   130	166	289	java/lang/Exception
    //   130	166	315	finally
    //   225	263	315	finally
    //   297	302	315	finally
    //   225	263	330	java/lang/Exception
    //   55	85	335	finally
    //   90	100	335	finally
    //   186	191	335	finally
    //   55	85	343	java/lang/Exception
    //   90	100	348	java/lang/Exception
  }

  public static String getMainMailAccount(Context paramContext)
  {
    if (AndroidVersionCompatibility.isEclairOrAbove());
    for (String str = new AccountWrapper().getNewMainMailAccount(paramContext); ; str = a(paramContext))
      return str;
  }

  public static boolean isValidMailAddress(String paramString, boolean paramBoolean)
  {
    boolean bool = true;
    if ((!paramBoolean) && (paramString.length() == 0));
    while (true)
    {
      return bool;
      if ((paramBoolean) && (TextUtils.isEmpty(paramString)))
        bool = false;
      else if (paramString.indexOf('@') <= 0)
        bool = false;
      else if (paramString.contains(" "))
        bool = false;
      else if (paramString.contains("&"))
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tools.MailUtils
 * JD-Core Version:    0.6.2
 */