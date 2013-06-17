package com.antivirus.core.d.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Message;
import com.antivirus.core.b;
import com.avg.toolkit.b.g;

public class e extends g
{
  protected String a;

  public com.avg.toolkit.b.e a()
  {
    return com.avg.toolkit.b.e.c;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    return c(paramContext);
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    b localb = new b(paramContext);
    SharedPreferences.Editor localEditor = localb.a.edit();
    localb.a(this.a, localEditor, Boolean.valueOf(false));
    localEditor.commit();
    return true;
  }

  public boolean b(Context paramContext)
  {
    if (this.f == null)
      c(paramContext);
    return true;
  }

  public int b_()
  {
    return 2008;
  }

  public String c()
  {
    return "Device.update6";
  }

  // ERROR //
  protected boolean c(Context paramContext)
  {
    // Byte code:
    //   0: new 67	com/antivirus/core/f/d
    //   3: dup
    //   4: invokespecial 68	com/antivirus/core/f/d:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: aload_1
    //   10: invokevirtual 70	com/antivirus/core/f/d:a	(Landroid/content/Context;)Z
    //   13: pop
    //   14: aload_1
    //   15: ldc 72
    //   17: invokevirtual 78	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   20: checkcast 80	android/telephony/TelephonyManager
    //   23: astore 4
    //   25: ldc 82
    //   27: astore 5
    //   29: getstatic 87	android/os/Build:MODEL	Ljava/lang/String;
    //   32: invokestatic 93	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   35: ifne +30 -> 65
    //   38: new 95	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   45: ldc 82
    //   47: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: getstatic 87	android/os/Build:MODEL	Ljava/lang/String;
    //   53: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: astore 45
    //   61: aload 45
    //   63: astore 5
    //   65: aload 5
    //   67: astore 7
    //   69: aload 4
    //   71: invokevirtual 106	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   74: astore 44
    //   76: aload 44
    //   78: astore 9
    //   80: aload 4
    //   82: invokevirtual 109	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   85: astore 43
    //   87: aload 43
    //   89: astore 11
    //   91: getstatic 114	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   94: invokestatic 93	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   97: ifne +490 -> 587
    //   100: getstatic 114	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   103: astore 13
    //   105: aload_1
    //   106: invokevirtual 118	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   109: aload_1
    //   110: invokevirtual 121	android/content/Context:getPackageName	()Ljava/lang/String;
    //   113: iconst_0
    //   114: invokevirtual 127	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   117: astore 16
    //   119: new 95	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   126: aload 13
    //   128: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc 129
    //   133: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc 131
    //   138: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc 133
    //   143: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload 16
    //   148: getfield 138	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   151: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: ldc 140
    //   156: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 16
    //   161: getfield 144	android/content/pm/PackageInfo:versionCode	I
    //   164: invokevirtual 147	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   167: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: pop
    //   171: ldc 82
    //   173: astore 18
    //   175: getstatic 150	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   178: invokestatic 156	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   181: iconst_3
    //   182: if_icmple +23 -> 205
    //   185: ldc 84
    //   187: ldc 158
    //   189: invokevirtual 164	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   192: aconst_null
    //   193: invokevirtual 170	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   196: invokevirtual 173	java/lang/Object:toString	()Ljava/lang/String;
    //   199: astore 42
    //   201: aload 42
    //   203: astore 18
    //   205: new 175	com/avg/toolkit/e/g
    //   208: dup
    //   209: aload_1
    //   210: invokespecial 176	com/avg/toolkit/e/g:<init>	(Landroid/content/Context;)V
    //   213: astore 20
    //   215: ldc 82
    //   217: astore 21
    //   219: aload 4
    //   221: invokevirtual 179	android/telephony/TelephonyManager:getPhoneType	()I
    //   224: istore 41
    //   226: iload 41
    //   228: tableswitch	default:+24 -> 252, 1:+388->616, 2:+395->623
    //   253: iload 58
    //   255: fload 25
    //   257: iconst_1
    //   258: invokevirtual 182	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   261: astore 40
    //   263: aload 40
    //   265: astore 25
    //   267: aload 25
    //   269: ifnonnull +7 -> 276
    //   272: ldc 82
    //   274: astore 25
    //   276: bipush 15
    //   278: anewarray 172	java/lang/Object
    //   281: astore 26
    //   283: aload 26
    //   285: iconst_0
    //   286: aload_2
    //   287: invokevirtual 184	com/antivirus/core/f/d:b	()Ljava/lang/String;
    //   290: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   293: aastore
    //   294: aload 26
    //   296: iconst_1
    //   297: aload 7
    //   299: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   302: aastore
    //   303: aload 26
    //   305: iconst_2
    //   306: aload 18
    //   308: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   311: aastore
    //   312: aload 26
    //   314: iconst_3
    //   315: aload 9
    //   317: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   320: aastore
    //   321: aload 26
    //   323: iconst_4
    //   324: aload 11
    //   326: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   329: aastore
    //   330: aload 26
    //   332: iconst_5
    //   333: aload_0
    //   334: getfield 193	com/antivirus/core/d/a/e:h	Lcom/avg/toolkit/e/a;
    //   337: getfield 198	com/avg/toolkit/e/a:o	I
    //   340: invokestatic 201	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   343: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   346: aastore
    //   347: aload 26
    //   349: bipush 6
    //   351: aload 16
    //   353: getfield 138	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   356: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   359: aastore
    //   360: aload 26
    //   362: bipush 7
    //   364: aload 16
    //   366: getfield 144	android/content/pm/PackageInfo:versionCode	I
    //   369: invokestatic 201	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   372: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   375: aastore
    //   376: aload 26
    //   378: bipush 8
    //   380: aload 20
    //   382: invokevirtual 203	com/avg/toolkit/e/g:c	()Ljava/lang/String;
    //   385: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   388: aastore
    //   389: aload 26
    //   391: bipush 9
    //   393: aload_0
    //   394: getfield 193	com/antivirus/core/d/a/e:h	Lcom/avg/toolkit/e/a;
    //   397: getfield 206	com/avg/toolkit/e/a:p	I
    //   400: invokestatic 201	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   403: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   406: aastore
    //   407: aload_0
    //   408: getfield 193	com/antivirus/core/d/a/e:h	Lcom/avg/toolkit/e/a;
    //   411: invokevirtual 208	com/avg/toolkit/e/a:a	()Z
    //   414: ifeq +244 -> 658
    //   417: ldc 210
    //   419: astore 27
    //   421: aload 26
    //   423: bipush 10
    //   425: aload 27
    //   427: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   430: aastore
    //   431: aload 26
    //   433: bipush 11
    //   435: getstatic 114	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   438: invokestatic 189	com/avg/toolkit/b/j:a	(Ljava/lang/String;)Ljava/lang/String;
    //   441: aastore
    //   442: aload 26
    //   444: bipush 12
    //   446: invokestatic 216	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   449: invokevirtual 217	java/util/Locale:toString	()Ljava/lang/String;
    //   452: aastore
    //   453: aload 26
    //   455: bipush 13
    //   457: aload 23
    //   459: aastore
    //   460: aload 26
    //   462: bipush 14
    //   464: aload 25
    //   466: aastore
    //   467: aload_0
    //   468: aload 26
    //   470: putfield 58	com/antivirus/core/d/a/e:f	[Ljava/lang/Object;
    //   473: new 95	java/lang/StringBuilder
    //   476: dup
    //   477: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   480: astore 28
    //   482: aload_0
    //   483: getfield 58	com/antivirus/core/d/a/e:f	[Ljava/lang/Object;
    //   486: astore 29
    //   488: aload 29
    //   490: arraylength
    //   491: istore 30
    //   493: iconst_0
    //   494: istore 31
    //   496: iload 31
    //   498: iload 30
    //   500: if_icmpge +172 -> 672
    //   503: aload 29
    //   505: iload 31
    //   507: aaload
    //   508: astore 36
    //   510: aload 28
    //   512: bipush 124
    //   514: invokevirtual 220	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   517: astore 37
    //   519: aload 36
    //   521: ifnull +144 -> 665
    //   524: aload 36
    //   526: invokevirtual 173	java/lang/Object:toString	()Ljava/lang/String;
    //   529: astore 38
    //   531: aload 37
    //   533: aload 38
    //   535: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: pop
    //   539: iinc 31 1
    //   542: goto -46 -> 496
    //   545: astore 6
    //   547: aload 6
    //   549: invokestatic 225	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   552: aload 5
    //   554: astore 7
    //   556: goto -487 -> 69
    //   559: astore 8
    //   561: aload 8
    //   563: invokestatic 225	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   566: ldc 82
    //   568: astore 9
    //   570: goto -490 -> 80
    //   573: astore 10
    //   575: aload 10
    //   577: invokestatic 225	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   580: ldc 82
    //   582: astore 11
    //   584: goto -493 -> 91
    //   587: ldc 227
    //   589: astore 13
    //   591: goto -486 -> 105
    //   594: astore 12
    //   596: ldc 229
    //   598: astore 13
    //   600: goto -495 -> 105
    //   603: astore 14
    //   605: aload 14
    //   607: invokestatic 225	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   610: iconst_0
    //   611: istore 15
    //   613: iload 15
    //   615: ireturn
    //   616: ldc 231
    //   618: astore 21
    //   620: goto -368 -> 252
    //   623: ldc 233
    //   625: astore 21
    //   627: goto -375 -> 252
    //   630: astore 22
    //   632: aload 22
    //   634: invokestatic 225	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   637: aload 21
    //   639: astore 23
    //   641: goto -385 -> 256
    //   644: astore 24
    //   646: ldc 82
    //   648: astore 25
    //   650: aload 24
    //   652: invokestatic 225	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   655: goto -379 -> 276
    //   658: ldc 235
    //   660: astore 27
    //   662: goto -241 -> 421
    //   665: ldc 82
    //   667: astore 38
    //   669: goto -138 -> 531
    //   672: aload_0
    //   673: aload 28
    //   675: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   678: putfield 38	com/antivirus/core/d/a/e:a	Ljava/lang/String;
    //   681: new 24	com/antivirus/core/b
    //   684: dup
    //   685: aload_1
    //   686: invokespecial 27	com/antivirus/core/b:<init>	(Landroid/content/Context;)V
    //   689: astore 32
    //   691: aload 32
    //   693: invokevirtual 238	com/antivirus/core/b:k	()Ljava/lang/String;
    //   696: astore 33
    //   698: aload 33
    //   700: invokestatic 93	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   703: ifne +21 -> 724
    //   706: aload 33
    //   708: aload_0
    //   709: getfield 38	com/antivirus/core/d/a/e:a	Ljava/lang/String;
    //   712: invokevirtual 244	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   715: ifeq +9 -> 724
    //   718: iconst_0
    //   719: istore 15
    //   721: goto -108 -> 613
    //   724: aload 32
    //   726: getfield 30	com/antivirus/core/b:a	Landroid/content/SharedPreferences;
    //   729: invokeinterface 36 1 0
    //   734: astore 34
    //   736: aload 32
    //   738: ldc 82
    //   740: aload 34
    //   742: iconst_0
    //   743: invokestatic 44	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   746: invokevirtual 47	com/antivirus/core/b:a	(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V
    //   749: aload 34
    //   751: invokeinterface 53 1 0
    //   756: pop
    //   757: iconst_1
    //   758: istore 15
    //   760: goto -147 -> 613
    //   763: astore 19
    //   765: goto -560 -> 205
    //
    // Exception table:
    //   from	to	target	type
    //   29	61	545	java/lang/Exception
    //   69	76	559	java/lang/Exception
    //   80	87	573	java/lang/Exception
    //   91	105	594	java/lang/Exception
    //   105	119	603	java/lang/Exception
    //   219	226	630	java/lang/Exception
    //   256	263	644	java/lang/Exception
    //   175	201	763	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.d.a.e
 * JD-Core Version:    0.6.2
 */