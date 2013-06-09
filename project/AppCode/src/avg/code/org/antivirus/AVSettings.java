package org.antivirus;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import org.a.a.a.a.a;
import org.antivirus.core.Logger;
import org.antivirus.tools.MailUtils;

public class AVSettings
{
  public static final int APP_ICON = 2130837585;
  public static final int BUY_ALARM_TIMEOUT = 10000;
  public static final int INTERVAL_TRAFFIC_COUNTER = 60000;
  public static final boolean IS_DISABLE_CENTRAL_SEND_LOC = false;
  public static int[] LICENSE_BUY_NOTIFICATION_TIME = { 14, 1 };
  public static final int PARTNER_LOGO = 2130837748;
  public static final String TAG_APPLOCKER_PREFERENCES_FILE = "noel";
  public static final long UI_TIMEOUT = 15000L;
  private static SharedPreferences a;
  private static SharedPreferences.Editor b;
  private static ObfuscatedSharedPreferences c;
  private static boolean d = false;
  public static boolean isPasswordApproved = false;

  public AVSettings(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("av", 0);
    a = localSharedPreferences;
    if (localSharedPreferences == null)
      Logger.error("pref is null");
    while (true)
    {
      return;
      try
      {
        if (a.getBoolean("first_use", true))
          a.edit().putBoolean("tatzpinbekalut", true).commit();
        while (true)
        {
          while (true)
          {
            c = new ObfuscatedSharedPreferences(paramContext, "noel", 0, bool1);
            try
            {
              a.registerOnSharedPreferenceChangeListener(new AVSettings.1(this));
              if (!a(paramContext))
                break;
              c(paramContext);
            }
            catch (Exception localException2)
            {
              Logger.log(localException2);
            }
          }
          break;
          try
          {
            boolean bool2 = a.getBoolean("tatzpinbekalut", false);
            bool1 = bool2;
          }
          catch (Exception localException3)
          {
            Logger.log(localException3);
            bool1 = false;
          }
        }
      }
      catch (Exception localException1)
      {
        while (true)
          Logger.log(localException1);
      }
    }
  }

  private static String a(String paramString)
  {
    if (paramString == null)
      Logger.error("got null");
    byte[] arrayOfByte;
    String str1;
    for (String str2 = null; ; str2 = str1 + new String(a.a(arrayOfByte, false)))
    {
      return str2;
      arrayOfByte = paramString.getBytes();
      for (int i = 0; i < arrayOfByte.length; i++)
        arrayOfByte[i] = ((byte)(0xC ^ arrayOfByte[i]));
      str1 = "";
      for (int j = 0; j < 5; j++)
        str1 = str1 + '_';
    }
  }

  private static boolean a(Context paramContext)
  {
    boolean bool1 = d;
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      try
      {
        int i = a.getInt("version", 0);
        int j = b(paramContext);
        bool2 = false;
        if (i >= j)
          d = true;
      }
      catch (Exception localException)
      {
        while (true)
        {
          Logger.log(localException);
          bool2 = true;
        }
      }
    }
  }

  private static int b(Context paramContext)
  {
    return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
  }

  private static SharedPreferences.Editor b()
  {
    if (b == null)
      b = a.edit();
    return b;
  }

  private static String b(String paramString)
  {
    if (paramString == null)
    {
      Logger.error("got null");
      paramString = null;
    }
    while (true)
    {
      return paramString;
      if ((!TextUtils.isEmpty(paramString)) && (paramString.length() > 5))
      {
        int i = 0;
        int j = 0;
        while (i < 5)
        {
          if (paramString.charAt(i) != '_')
            j = 1;
          i++;
        }
        if (j == 0)
        {
          byte[] arrayOfByte = a.a(paramString.substring(5));
          for (int k = 0; k < arrayOfByte.length; k++)
            arrayOfByte[k] = ((byte)(0xC ^ arrayOfByte[k]));
          paramString = new String(arrayOfByte);
        }
      }
    }
  }

  // ERROR //
  private static void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 202	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore_1
    //   5: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   8: ldc 150
    //   10: iconst_0
    //   11: invokeinterface 154 3 0
    //   16: istore 44
    //   18: iload 44
    //   20: istore_3
    //   21: aload_1
    //   22: invokestatic 157	org/antivirus/AVSettings:b	(Landroid/content/Context;)I
    //   25: istore 45
    //   27: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   30: invokeinterface 78 1 0
    //   35: ldc 150
    //   37: iload 45
    //   39: invokeinterface 206 3 0
    //   44: invokeinterface 90 1 0
    //   49: pop
    //   50: iload_3
    //   51: istore 4
    //   53: iload 4
    //   55: ifle +128 -> 183
    //   58: invokestatic 212	java/lang/System:currentTimeMillis	()J
    //   61: ldc2_w 213
    //   64: lsub
    //   65: lstore 40
    //   67: new 216	org/antivirus/core/EngineSettings
    //   70: dup
    //   71: aload_1
    //   72: invokespecial 218	org/antivirus/core/EngineSettings:<init>	(Landroid/content/Context;)V
    //   75: lload 40
    //   77: invokevirtual 222	org/antivirus/core/EngineSettings:setNextSecurityUpdate	(J)V
    //   80: aload_1
    //   81: invokevirtual 226	android/content/Context:getFilesDir	()Ljava/io/File;
    //   84: invokestatic 231	org/antivirus/a/a:a	(Ljava/io/File;)V
    //   87: ldc 233
    //   89: invokestatic 238	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   92: invokevirtual 242	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   95: ifeq +40 -> 135
    //   98: new 244	java/io/File
    //   101: dup
    //   102: invokestatic 247	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   105: new 128	java/lang/StringBuilder
    //   108: dup
    //   109: ldc 249
    //   111: invokespecial 251	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   114: aload_1
    //   115: invokevirtual 164	android/content/Context:getPackageName	()Ljava/lang/String;
    //   118: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc 253
    //   123: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokespecial 256	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   132: invokestatic 231	org/antivirus/a/a:a	(Ljava/io/File;)V
    //   135: aload_1
    //   136: ldc_w 258
    //   139: iconst_0
    //   140: invokevirtual 56	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   143: invokeinterface 78 1 0
    //   148: invokeinterface 261 1 0
    //   153: invokeinterface 90 1 0
    //   158: pop
    //   159: aload_1
    //   160: ldc_w 263
    //   163: iconst_0
    //   164: invokevirtual 56	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   167: invokeinterface 78 1 0
    //   172: invokeinterface 261 1 0
    //   177: invokeinterface 90 1 0
    //   182: pop
    //   183: iload 4
    //   185: sipush 2626
    //   188: if_icmpgt +106 -> 294
    //   191: sipush 2626
    //   194: istore 4
    //   196: iload 4
    //   198: lookupswitch	default:+82->280, 2626:+224->422, 3081:+592->790, 5172:+669->867, 168756:+706->904, 170538:+743->941, 171702:+864->1062, 172102:+891->1089, 173170:+948->1146, 174226:+966->1164
    //   281: astore_2
    //   282: iconst_0
    //   283: istore_3
    //   284: aload_2
    //   285: invokestatic 115	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   288: iload_3
    //   289: istore 4
    //   291: goto -238 -> 53
    //   294: iload 4
    //   296: sipush 3081
    //   299: if_icmpgt +11 -> 310
    //   302: sipush 3081
    //   305: istore 4
    //   307: goto -111 -> 196
    //   310: iload 4
    //   312: sipush 5172
    //   315: if_icmpgt +11 -> 326
    //   318: sipush 5172
    //   321: istore 4
    //   323: goto -127 -> 196
    //   326: iload 4
    //   328: ldc_w 264
    //   331: if_icmpgt +11 -> 342
    //   334: ldc_w 264
    //   337: istore 4
    //   339: goto -143 -> 196
    //   342: iload 4
    //   344: ldc_w 265
    //   347: if_icmpgt +11 -> 358
    //   350: ldc_w 265
    //   353: istore 4
    //   355: goto -159 -> 196
    //   358: iload 4
    //   360: ldc_w 266
    //   363: if_icmpgt +11 -> 374
    //   366: ldc_w 266
    //   369: istore 4
    //   371: goto -175 -> 196
    //   374: iload 4
    //   376: ldc_w 267
    //   379: if_icmpgt +11 -> 390
    //   382: ldc_w 267
    //   385: istore 4
    //   387: goto -191 -> 196
    //   390: iload 4
    //   392: ldc_w 268
    //   395: if_icmpgt +11 -> 406
    //   398: ldc_w 268
    //   401: istore 4
    //   403: goto -207 -> 196
    //   406: iload 4
    //   408: ldc_w 269
    //   411: if_icmpgt -215 -> 196
    //   414: ldc_w 269
    //   417: istore 4
    //   419: goto -223 -> 196
    //   422: getstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   425: ifnonnull +18 -> 443
    //   428: new 92	com/android/vending/licensing/ObfuscatedSharedPreferences
    //   431: dup
    //   432: aload_1
    //   433: ldc 22
    //   435: iconst_0
    //   436: iconst_0
    //   437: invokespecial 95	com/android/vending/licensing/ObfuscatedSharedPreferences:<init>	(Landroid/content/Context;Ljava/lang/String;IZ)V
    //   440: putstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   443: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   446: invokeinterface 78 1 0
    //   451: ldc_w 271
    //   454: invokeinterface 275 2 0
    //   459: invokeinterface 90 1 0
    //   464: pop
    //   465: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   468: ldc_w 277
    //   471: aconst_null
    //   472: invokeinterface 281 3 0
    //   477: astore 26
    //   479: aload 26
    //   481: ifnull +42 -> 523
    //   484: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   487: invokeinterface 78 1 0
    //   492: ldc_w 277
    //   495: invokeinterface 275 2 0
    //   500: invokeinterface 90 1 0
    //   505: pop
    //   506: getstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   509: ldc_w 283
    //   512: aload 26
    //   514: invokevirtual 287	com/android/vending/licensing/ObfuscatedSharedPreferences:putString	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   517: invokeinterface 90 1 0
    //   522: pop
    //   523: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   526: ldc_w 289
    //   529: invokeinterface 293 2 0
    //   534: ifeq +52 -> 586
    //   537: getstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   540: ldc_w 295
    //   543: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   546: ldc_w 289
    //   549: iconst_0
    //   550: invokeinterface 74 3 0
    //   555: invokevirtual 298	com/android/vending/licensing/ObfuscatedSharedPreferences:putUnObfuscatedBoolean	(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    //   558: invokeinterface 90 1 0
    //   563: pop
    //   564: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   567: invokeinterface 78 1 0
    //   572: ldc_w 289
    //   575: invokeinterface 275 2 0
    //   580: invokeinterface 90 1 0
    //   585: pop
    //   586: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   589: ldc_w 300
    //   592: aconst_null
    //   593: invokeinterface 281 3 0
    //   598: astore 27
    //   600: aload 27
    //   602: ifnull +52 -> 654
    //   605: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   608: invokeinterface 78 1 0
    //   613: ldc_w 300
    //   616: invokeinterface 275 2 0
    //   621: invokeinterface 90 1 0
    //   626: pop
    //   627: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   630: invokeinterface 78 1 0
    //   635: ldc_w 302
    //   638: aload 27
    //   640: invokestatic 304	org/antivirus/AVSettings:a	(Ljava/lang/String;)Ljava/lang/String;
    //   643: invokeinterface 305 3 0
    //   648: invokeinterface 90 1 0
    //   653: pop
    //   654: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   657: ldc_w 307
    //   660: aconst_null
    //   661: invokeinterface 281 3 0
    //   666: astore 28
    //   668: aload 28
    //   670: ifnull +52 -> 722
    //   673: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   676: invokeinterface 78 1 0
    //   681: ldc_w 307
    //   684: invokeinterface 275 2 0
    //   689: invokeinterface 90 1 0
    //   694: pop
    //   695: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   698: invokeinterface 78 1 0
    //   703: ldc_w 309
    //   706: aload 28
    //   708: invokestatic 304	org/antivirus/AVSettings:a	(Ljava/lang/String;)Ljava/lang/String;
    //   711: invokeinterface 305 3 0
    //   716: invokeinterface 90 1 0
    //   721: pop
    //   722: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   725: ldc_w 311
    //   728: aconst_null
    //   729: invokeinterface 281 3 0
    //   734: astore 29
    //   736: aload 29
    //   738: ifnull +52 -> 790
    //   741: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   744: invokeinterface 78 1 0
    //   749: ldc_w 311
    //   752: invokeinterface 275 2 0
    //   757: invokeinterface 90 1 0
    //   762: pop
    //   763: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   766: invokeinterface 78 1 0
    //   771: ldc_w 313
    //   774: aload 29
    //   776: invokestatic 304	org/antivirus/AVSettings:a	(Ljava/lang/String;)Ljava/lang/String;
    //   779: invokeinterface 305 3 0
    //   784: invokeinterface 90 1 0
    //   789: pop
    //   790: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   793: ldc_w 315
    //   796: aconst_null
    //   797: invokeinterface 281 3 0
    //   802: astore 20
    //   804: aload 20
    //   806: ifnull +30 -> 836
    //   809: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   812: invokeinterface 78 1 0
    //   817: ldc_w 315
    //   820: invokeinterface 275 2 0
    //   825: invokeinterface 90 1 0
    //   830: pop
    //   831: aload 20
    //   833: invokestatic 320	org/antivirus/Strings:updateTo2_9	(Ljava/lang/String;)V
    //   836: aload_1
    //   837: invokevirtual 324	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   840: ldc_w 326
    //   843: ldc 126
    //   845: invokestatic 331	android/provider/Settings$System:putString	(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    //   848: pop
    //   849: ldc 126
    //   851: invokestatic 334	org/antivirus/AVSettings:setApplockerUserPassword	(Ljava/lang/String;)V
    //   854: new 336	org/antivirus/applocker/a
    //   857: dup
    //   858: invokespecial 337	org/antivirus/applocker/a:<init>	()V
    //   861: pop
    //   862: aload_1
    //   863: aconst_null
    //   864: invokestatic 340	org/antivirus/applocker/a:a	(Landroid/content/Context;[Ljava/lang/String;)V
    //   867: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   870: ldc_w 342
    //   873: aconst_null
    //   874: invokeinterface 281 3 0
    //   879: ifnull +25 -> 904
    //   882: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   885: invokeinterface 78 1 0
    //   890: ldc_w 342
    //   893: invokeinterface 275 2 0
    //   898: invokeinterface 90 1 0
    //   903: pop
    //   904: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   907: ldc_w 344
    //   910: aconst_null
    //   911: invokeinterface 281 3 0
    //   916: ifnull +25 -> 941
    //   919: getstatic 58	org/antivirus/AVSettings:a	Landroid/content/SharedPreferences;
    //   922: invokeinterface 78 1 0
    //   927: ldc_w 344
    //   930: invokeinterface 275 2 0
    //   935: invokeinterface 90 1 0
    //   940: pop
    //   941: aload_1
    //   942: ldc_w 346
    //   945: iconst_0
    //   946: invokevirtual 56	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   949: astore 11
    //   951: aload 11
    //   953: ldc_w 346
    //   956: ldc 126
    //   958: invokeinterface 281 3 0
    //   963: astore 12
    //   965: aload 12
    //   967: ifnull +68 -> 1035
    //   970: aload 12
    //   972: ldc 126
    //   974: invokevirtual 242	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   977: ifne +58 -> 1035
    //   980: new 92	com/android/vending/licensing/ObfuscatedSharedPreferences
    //   983: dup
    //   984: aload_1
    //   985: ldc_w 348
    //   988: iconst_0
    //   989: iconst_1
    //   990: invokespecial 95	com/android/vending/licensing/ObfuscatedSharedPreferences:<init>	(Landroid/content/Context;Ljava/lang/String;IZ)V
    //   993: astore 14
    //   995: aload 14
    //   997: ldc_w 348
    //   1000: aload 12
    //   1002: invokevirtual 287	com/android/vending/licensing/ObfuscatedSharedPreferences:putString	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   1005: pop
    //   1006: aload 14
    //   1008: invokevirtual 349	com/android/vending/licensing/ObfuscatedSharedPreferences:commit	()Z
    //   1011: pop
    //   1012: aload 11
    //   1014: invokeinterface 78 1 0
    //   1019: ldc_w 346
    //   1022: ldc 126
    //   1024: invokeinterface 305 3 0
    //   1029: invokeinterface 90 1 0
    //   1034: pop
    //   1035: new 244	java/io/File
    //   1038: dup
    //   1039: aload_1
    //   1040: invokevirtual 226	android/content/Context:getFilesDir	()Ljava/io/File;
    //   1043: invokevirtual 352	java/io/File:getParent	()Ljava/lang/String;
    //   1046: ldc_w 354
    //   1049: invokevirtual 357	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   1052: ldc_w 359
    //   1055: invokespecial 362	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1058: invokevirtual 365	java/io/File:delete	()Z
    //   1061: pop
    //   1062: new 244	java/io/File
    //   1065: dup
    //   1066: aload_1
    //   1067: invokevirtual 226	android/content/Context:getFilesDir	()Ljava/io/File;
    //   1070: invokevirtual 352	java/io/File:getParent	()Ljava/lang/String;
    //   1073: ldc_w 354
    //   1076: invokevirtual 357	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   1079: ldc_w 367
    //   1082: invokespecial 362	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1085: invokevirtual 365	java/io/File:delete	()Z
    //   1088: pop
    //   1089: getstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   1092: ldc_w 369
    //   1095: ldc 126
    //   1097: invokevirtual 370	com/android/vending/licensing/ObfuscatedSharedPreferences:getString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1100: astore 6
    //   1102: aload 6
    //   1104: ldc 126
    //   1106: invokevirtual 242	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1109: ifne +20 -> 1129
    //   1112: getstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   1115: ldc_w 372
    //   1118: aload 6
    //   1120: invokevirtual 287	com/android/vending/licensing/ObfuscatedSharedPreferences:putString	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   1123: invokeinterface 90 1 0
    //   1128: pop
    //   1129: getstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   1132: ldc_w 369
    //   1135: invokevirtual 374	com/android/vending/licensing/ObfuscatedSharedPreferences:remove	(Ljava/lang/String;)Z
    //   1138: pop
    //   1139: getstatic 97	org/antivirus/AVSettings:c	Lcom/android/vending/licensing/ObfuscatedSharedPreferences;
    //   1142: invokevirtual 349	com/android/vending/licensing/ObfuscatedSharedPreferences:commit	()Z
    //   1145: pop
    //   1146: new 244	java/io/File
    //   1149: dup
    //   1150: aload_1
    //   1151: invokevirtual 226	android/content/Context:getFilesDir	()Ljava/io/File;
    //   1154: ldc_w 376
    //   1157: invokespecial 256	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1160: invokevirtual 365	java/io/File:delete	()Z
    //   1163: pop
    //   1164: new 378	org/antivirus/core/c/b
    //   1167: dup
    //   1168: invokespecial 379	org/antivirus/core/c/b:<init>	()V
    //   1171: aload_1
    //   1172: invokevirtual 381	org/antivirus/core/c/b:b	(Landroid/content/Context;)V
    //   1175: goto -895 -> 280
    //   1178: astore 21
    //   1180: aload 21
    //   1182: invokestatic 115	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   1185: goto -336 -> 849
    //   1188: astore_2
    //   1189: goto -905 -> 284
    //
    // Exception table:
    //   from	to	target	type
    //   5	18	281	java/lang/Exception
    //   836	849	1178	java/lang/Exception
    //   21	50	1188	java/lang/Exception
  }

  public static String commGetValue(String paramString)
  {
    return a.getString("commManager_" + paramString, "EMPTY");
  }

  public static void commRmValue(String paramString)
  {
    b().remove("commManager_" + paramString);
    commit();
  }

  public static void commSetValue(String paramString1, String paramString2)
  {
    b().putString("commManager_" + paramString1, paramString2);
    commit();
  }

  public static void commit()
  {
    if (b != null)
    {
      b.commit();
      b = null;
    }
  }

  public static String decryptit(String paramString)
  {
    if (paramString == null)
    {
      Logger.error("got null");
      paramString = null;
    }
    while (true)
    {
      return paramString;
      if (paramString.length() > 5)
      {
        int i = 0;
        int j = 0;
        while (i < 5)
        {
          if (paramString.charAt(i) != '_')
            j = 1;
          i++;
        }
        if (j == 0)
        {
          byte[] arrayOfByte = a.a(paramString.substring(5));
          for (int k = 0; k < arrayOfByte.length; k++)
            arrayOfByte[k] = ((byte)(0xB ^ arrayOfByte[k]));
          paramString = new String(arrayOfByte);
        }
      }
    }
  }

  public static void disableBlockedWaring()
  {
    b().putBoolean("show_blocked_warning", false);
    commit();
  }

  public static void disableTrustedWaring()
  {
    b().putBoolean("show_trusted_warning", false);
    commit();
  }

  public static String encryptit(String paramString)
  {
    if (paramString == null)
      Logger.error("got null");
    byte[] arrayOfByte;
    String str1;
    for (String str2 = null; ; str2 = str1 + new String(a.a(arrayOfByte, false)))
    {
      return str2;
      arrayOfByte = paramString.getBytes();
      for (int i = 0; i < arrayOfByte.length; i++)
        arrayOfByte[i] = ((byte)(0xB ^ arrayOfByte[i]));
      str1 = "";
      for (int j = 0; j < 5; j++)
        str1 = str1 + '_';
    }
  }

  public static long getAcceptLicenseReminderTime()
  {
    return a.getLong("accept_license_reminder", 0L);
  }

  public static String getAppLockerPassRecoveryMailAddr(Context paramContext)
  {
    return c.getString("doarxahazala_tajlei", MailUtils.getMainMailAccount(paramContext));
  }

  public static String getAppUnlockPassword(Context paramContext)
  {
    if (a(paramContext))
      c(paramContext);
    return b(a.getString("xx4", ""));
  }

  public static String getApplockerUserPassword(Context paramContext)
  {
    if (a(paramContext))
      c(paramContext);
    return c.getString("xx1", "");
  }

  public static int getBuyNotificationyShownIdx()
  {
    return a.getInt("buy_notification", -1);
  }

  public static String getC2dmToken()
  {
    return a.getString("c2dm_token", "");
  }

  public static int getDataCycleUnits()
  {
    return a.getInt("data_plan_cycle_units", 2);
  }

  public static int getDataCycleValues()
  {
    return a.getInt("data_plan_cycle_value", 1);
  }

  public static long getDataPlanBillingDate()
  {
    return a.getLong("billing_date", -1L);
  }

  public static int getDataPlanNotificationThreshold()
  {
    return a.getInt("data_plan_notification_threshold", 90);
  }

  public static int getDataQuota()
  {
    return a.getInt("data_plan_quota", 2);
  }

  public static long getDataQuotaBytes()
  {
    return a.getLong("data_plan_quota_bytes", 1L);
  }

  public static int getDataQuotaUnits()
  {
    return a.getInt("data_plan_quota_units", 1);
  }

  public static int getDataRefreshRate()
  {
    return a.getInt("refresh_rate", 1);
  }

  public static String getDefaultAutoRejectMessage()
  {
    return a.getString("default_auto_reject_message", null);
  }

  public static String getFindRUser(Context paramContext)
  {
    if (a(paramContext))
      c(paramContext);
    return b(a.getString("xx6", ""));
  }

  public static long getLastBackupTime()
  {
    return a.getLong("last_backup_time", 0L);
  }

  public static int getLastBatteryThreshold()
  {
    return a.getInt("last_battery_threshold", 0);
  }

  public static String getLastUsedVersionName()
  {
    return a.getString("last_used_version_name", "1.0");
  }

  public static boolean getLogExceptions()
  {
    return a.getBoolean("le", false);
  }

  public static boolean getLogToFile()
  {
    return a.getBoolean("ltf", false);
  }

  public static long getLogUpdateTimeStamp()
  {
    return a.getLong("log_update_timestamp", 0L);
  }

  public static String getLostMsg()
  {
    return a.getString("updated_lost_msg", "");
  }

  public static String getMainMailAccount()
  {
    return a.getString("main_mail_account", "");
  }

  public static boolean getPermLock()
  {
    return a.getBoolean("loxxer", false);
  }

  public static int getPowerSavingModeThreshold()
  {
    return a.getInt("notify_on_low_battery_threshold", org.antivirus.tuneup.BatterySaveSettingsActivity.c[1]);
  }

  public static String getPremPass(Context paramContext)
  {
    if (a(paramContext))
      c(paramContext);
    return b(a.getString("xx5", a("1234")));
  }

  public static int getQuotaUsageWarningId()
  {
    return a.getInt("quota_usage_notified_warning_id", 0);
  }

  public static boolean getUrlFilter()
  {
    return a.getBoolean("url_filter", false);
  }

  public static long getVersionUpdateNotificationLastTime()
  {
    return a.getLong("version_update_last_time", 0L);
  }

  public static boolean isApplockerEmailEntered(Context paramContext)
  {
    if (a(paramContext))
      c(paramContext);
    return c.getUnObfuscatedBoolean("xx3", false);
  }

  public static boolean isAutoScanApp()
  {
    return a.getBoolean("auto_scan_app", true);
  }

  public static boolean isDataCountRestart()
  {
    return a.getBoolean("restart_data_count", true);
  }

  public static boolean isFlashLightOn()
  {
    return a.getBoolean("flash_light_on", false);
  }

  public static boolean isPowerSavingMode()
  {
    return a.getBoolean("notify_on_low_battery", false);
  }

  public static boolean isQuotaOngoingNotification()
  {
    return a.getBoolean("quota_ongoing_notification", false);
  }

  public static boolean isQuotaWarningNotificationOn()
  {
    return a.getBoolean("notify_on_data_plan_threshold", false);
  }

  public static boolean isTrafficCounterOn()
  {
    return a.getBoolean("traffic_counter_on", false);
  }

  public static boolean isUrlAntiPhishingEnabled()
  {
    return a.getBoolean("url_anti_phishing_key", false);
  }

  public static void markAsUsed()
  {
    b().putBoolean("first_use", false);
  }

  public static void setAcceptLicenseReminderTime(long paramLong)
  {
    b().putLong("accept_license_reminder", paramLong);
    commit();
  }

  public static void setAppLockerPassRecoveryMailAddr(String paramString)
  {
    c.putString("doarxahazala_tajlei", paramString).commit();
  }

  public static void setAppUnlockPassword(String paramString)
  {
    a.edit().putString("xx4", a(paramString)).commit();
  }

  public static void setApplockerEmailEntered(boolean paramBoolean)
  {
    c.putUnObfuscatedBoolean("xx3", paramBoolean).commit();
  }

  public static void setApplockerUserPassword(String paramString)
  {
    c.putString("xx1", paramString).commit();
  }

  public static void setAutoScanApp(boolean paramBoolean)
  {
    b().putBoolean("auto_scan_app", paramBoolean);
  }

  public static void setBuyNotificationyShownIdx(int paramInt)
  {
    b().putInt("buy_notification", paramInt);
    commit();
  }

  public static void setC2dmToken(String paramString)
  {
    b().putString("c2dm_token", paramString);
    commit();
  }

  public static void setDataCountRestart(boolean paramBoolean)
  {
    b().putBoolean("restart_data_count", paramBoolean);
    commit();
  }

  public static void setDataCycleUnits(int paramInt)
  {
    b().putInt("data_plan_cycle_units", paramInt);
    commit();
  }

  public static void setDataCycleValues(int paramInt)
  {
    b().putInt("data_plan_cycle_value", paramInt);
    commit();
  }

  public static void setDataPlanBillingDate(long paramLong)
  {
    b().putLong("billing_date", paramLong);
    commit();
  }

  public static void setDataPlanNotificationThreshold(int paramInt)
  {
    b().putInt("data_plan_notification_threshold", paramInt);
    commit();
  }

  public static void setDataQuota(int paramInt)
  {
    b().putInt("data_plan_quota", paramInt);
    commit();
  }

  public static void setDataQuotaBytes(long paramLong)
  {
    b().putLong("data_plan_quota_bytes", paramLong);
    commit();
  }

  public static void setDataQuotaUnits(int paramInt)
  {
    b().putInt("data_plan_quota_units", paramInt);
    commit();
  }

  public static void setDataRefreshRate(int paramInt)
  {
    b().putInt("refresh_rate", paramInt);
    commit();
  }

  public static void setDefaultAutoRejectMessage(String paramString)
  {
    b().putString("default_auto_reject_message", paramString);
    commit();
  }

  public static void setFindRUser(String paramString)
  {
    a.edit().putString("xx6", a(paramString)).commit();
  }

  public static void setFlashLightOn(boolean paramBoolean)
  {
    b().putBoolean("flash_light_on", paramBoolean);
    commit();
  }

  public static void setLastBackupTime(long paramLong)
  {
    b().putLong("last_backup_time", paramLong);
    commit();
  }

  public static void setLastBatteryThreshold(int paramInt)
  {
    b().putInt("last_battery_threshold", paramInt);
    commit();
  }

  public static void setLastUsedVersionName(String paramString)
  {
    b().putString("last_used_version_name", paramString);
  }

  public static void setLogExceptions(boolean paramBoolean)
  {
    b().putBoolean("le", paramBoolean);
  }

  public static void setLogToFile(boolean paramBoolean)
  {
    b().putBoolean("ltf", paramBoolean);
  }

  public static void setLogUpdateTimeStamp(long paramLong)
  {
    b().putLong("log_update_timestamp", paramLong);
  }

  public static void setLostMsg(String paramString)
  {
    b().putString("updated_lost_msg", paramString);
    commit();
  }

  public static void setMainMailAccount(String paramString)
  {
    b().putString("main_mail_account", paramString);
  }

  public static void setPermLock(boolean paramBoolean)
  {
    b().putBoolean("loxxer", paramBoolean);
    commit();
  }

  public static void setPowerSavingMode(boolean paramBoolean)
  {
    b().putBoolean("notify_on_low_battery", paramBoolean);
    commit();
  }

  public static void setPowerSavingThreshold(int paramInt)
  {
    b().putInt("notify_on_low_battery_threshold", paramInt);
    commit();
  }

  public static void setPremPass(String paramString)
  {
    a.edit().putString("xx5", a(paramString)).commit();
  }

  public static void setProScamAndSpamUrlFilter(boolean paramBoolean)
  {
    b().putBoolean("url_filter", paramBoolean);
  }

  public static void setQuotaOngoingNotification(boolean paramBoolean)
  {
    b().putBoolean("quota_ongoing_notification", paramBoolean);
    commit();
  }

  public static void setQuotaUsageWarningId(int paramInt)
  {
    b().putInt("quota_usage_notified_warning_id", paramInt);
    commit();
  }

  public static void setQuotaWarningNotificationOn(boolean paramBoolean)
  {
    b().putBoolean("notify_on_data_plan_threshold", paramBoolean);
    commit();
  }

  public static void setSendLocation(boolean paramBoolean)
  {
    b().putBoolean("send_location", paramBoolean);
  }

  public static void setShowActivationScreen(boolean paramBoolean)
  {
    b().putBoolean("show_tutorial", paramBoolean);
  }

  public static void setTrafficCounterOn(boolean paramBoolean)
  {
    b().putBoolean("traffic_counter_on", paramBoolean);
    commit();
  }

  public static void setUrlAntiPhishing(boolean paramBoolean)
  {
    b().putBoolean("url_anti_phishing_key", paramBoolean);
    commit();
  }

  public static void setVersionUpdateNotificationLastTime(long paramLong)
  {
    b().putLong("version_update_last_time", paramLong);
    commit();
  }

  public static boolean shouldSendLocation()
  {
    return a.getBoolean("send_location", false);
  }

  public static boolean shouldShowActivationScreen()
  {
    return a.getBoolean("show_tutorial", true);
  }

  public static boolean showBlockedWarning()
  {
    return a.getBoolean("show_blocked_warning", true);
  }

  public static boolean showTrustedWarning()
  {
    return a.getBoolean("show_trusted_warning", true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.AVSettings
 * JD-Core Version:    0.6.2
 */