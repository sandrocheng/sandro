package com.keniu.security.process;

import android.os.Handler;

final class r extends Thread
{
  private Handler b;

  public r(ProcessManagerActivity paramProcessManagerActivity, Handler paramHandler)
  {
    this.b = paramHandler;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   4: invokestatic 28	com/keniu/security/process/ProcessManagerActivity:t	(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/app/ActivityManager;
    //   7: invokevirtual 34	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   10: astore_2
    //   11: new 36	java/util/ArrayList
    //   14: dup
    //   15: invokespecial 37	java/util/ArrayList:<init>	()V
    //   18: astore_3
    //   19: new 36	java/util/ArrayList
    //   22: dup
    //   23: invokespecial 37	java/util/ArrayList:<init>	()V
    //   26: astore 4
    //   28: new 36	java/util/ArrayList
    //   31: dup
    //   32: invokespecial 37	java/util/ArrayList:<init>	()V
    //   35: astore 5
    //   37: aload_2
    //   38: invokeinterface 43 1 0
    //   43: astore 6
    //   45: aload 6
    //   47: invokeinterface 49 1 0
    //   52: ifeq +223 -> 275
    //   55: aload 6
    //   57: invokeinterface 53 1 0
    //   62: checkcast 55	android/app/ActivityManager$RunningAppProcessInfo
    //   65: astore 17
    //   67: aload_0
    //   68: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   71: getfield 58	com/keniu/security/process/ProcessManagerActivity:a	Z
    //   74: ifeq +6 -> 80
    //   77: goto +547 -> 624
    //   80: aload 17
    //   82: ifnull -37 -> 45
    //   85: aload 17
    //   87: getfield 62	android/app/ActivityManager$RunningAppProcessInfo:pkgList	[Ljava/lang/String;
    //   90: astore 18
    //   92: iconst_0
    //   93: istore 19
    //   95: iload 19
    //   97: aload 18
    //   99: arraylength
    //   100: if_icmpge -55 -> 45
    //   103: aload 18
    //   105: iload 19
    //   107: aaload
    //   108: astore 20
    //   110: aload 20
    //   112: aload_0
    //   113: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   116: invokevirtual 66	com/keniu/security/process/ProcessManagerActivity:getPackageName	()Ljava/lang/String;
    //   119: invokevirtual 72	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   122: istore 21
    //   124: iload 21
    //   126: ifne +499 -> 625
    //   129: aload_0
    //   130: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   133: invokevirtual 76	com/keniu/security/process/ProcessManagerActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   136: aload 20
    //   138: iconst_1
    //   139: invokevirtual 82	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   142: getfield 88	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   145: astore 23
    //   147: aload 23
    //   149: ifnull +476 -> 625
    //   152: new 90	com/keniu/security/d/e
    //   155: dup
    //   156: invokespecial 91	com/keniu/security/d/e:<init>	()V
    //   159: astore 24
    //   161: aload 24
    //   163: aload 23
    //   165: aload_0
    //   166: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   169: invokevirtual 76	com/keniu/security/process/ProcessManagerActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   172: invokevirtual 97	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   175: invokevirtual 102	java/lang/Object:toString	()Ljava/lang/String;
    //   178: invokevirtual 105	com/keniu/security/d/e:b	(Ljava/lang/String;)V
    //   181: aload 24
    //   183: aload 20
    //   185: invokevirtual 107	com/keniu/security/d/e:a	(Ljava/lang/String;)V
    //   188: aload 24
    //   190: aload 17
    //   192: getfield 111	android/app/ActivityManager$RunningAppProcessInfo:pid	I
    //   195: invokevirtual 114	com/keniu/security/d/e:a	(I)V
    //   198: aload 5
    //   200: aload 20
    //   202: invokeinterface 118 2 0
    //   207: ifeq +6 -> 213
    //   210: goto +415 -> 625
    //   213: aload 5
    //   215: aload 20
    //   217: invokeinterface 121 2 0
    //   222: pop
    //   223: iconst_1
    //   224: aload 23
    //   226: getfield 124	android/content/pm/ApplicationInfo:flags	I
    //   229: iand
    //   230: iconst_1
    //   231: if_icmpne +22 -> 253
    //   234: aload 24
    //   236: iconst_4
    //   237: putfield 127	com/keniu/security/d/e:c	I
    //   240: aload 4
    //   242: aload 24
    //   244: invokeinterface 121 2 0
    //   249: pop
    //   250: goto +375 -> 625
    //   253: aload 24
    //   255: iconst_2
    //   256: putfield 127	com/keniu/security/d/e:c	I
    //   259: aload_3
    //   260: aload 24
    //   262: invokeinterface 121 2 0
    //   267: pop
    //   268: goto +357 -> 625
    //   271: astore_1
    //   272: goto +352 -> 624
    //   275: aload_0
    //   276: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   279: aload 4
    //   281: invokeinterface 131 1 0
    //   286: invokestatic 134	com/keniu/security/process/ProcessManagerActivity:b	(Lcom/keniu/security/process/ProcessManagerActivity;I)I
    //   289: pop
    //   290: aload_0
    //   291: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   294: aload_3
    //   295: invokeinterface 131 1 0
    //   300: invokestatic 136	com/keniu/security/process/ProcessManagerActivity:c	(Lcom/keniu/security/process/ProcessManagerActivity;I)I
    //   303: pop
    //   304: aload_0
    //   305: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   308: aload 4
    //   310: invokestatic 139	com/keniu/security/process/ProcessManagerActivity:a	(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V
    //   313: aload_0
    //   314: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   317: aload_3
    //   318: invokestatic 139	com/keniu/security/process/ProcessManagerActivity:a	(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V
    //   321: aload_0
    //   322: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   325: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   328: invokevirtual 147	com/jxphone/mosecurity/b/c:a	()Ljava/util/List;
    //   331: invokeinterface 150 1 0
    //   336: istore 9
    //   338: aload 4
    //   340: invokeinterface 43 1 0
    //   345: astore 10
    //   347: aload 10
    //   349: invokeinterface 49 1 0
    //   354: ifeq +89 -> 443
    //   357: aload 10
    //   359: invokeinterface 53 1 0
    //   364: checkcast 90	com/keniu/security/d/e
    //   367: astore 16
    //   369: iload 9
    //   371: ifeq +18 -> 389
    //   374: aload_0
    //   375: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   378: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   381: aload 16
    //   383: invokevirtual 153	com/jxphone/mosecurity/b/c:a	(Lcom/keniu/security/d/e;)V
    //   386: goto -39 -> 347
    //   389: aload_0
    //   390: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   393: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   396: aload 16
    //   398: invokevirtual 156	com/jxphone/mosecurity/b/c:b	(Lcom/keniu/security/d/e;)Z
    //   401: ifne +18 -> 419
    //   404: aload_0
    //   405: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   408: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   411: aload 16
    //   413: invokevirtual 153	com/jxphone/mosecurity/b/c:a	(Lcom/keniu/security/d/e;)V
    //   416: goto -69 -> 347
    //   419: aload_0
    //   420: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   423: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   426: aload 16
    //   428: invokevirtual 158	com/jxphone/mosecurity/b/c:c	(Lcom/keniu/security/d/e;)Z
    //   431: ifeq -84 -> 347
    //   434: aload 16
    //   436: iconst_1
    //   437: invokevirtual 161	com/keniu/security/d/e:a	(Z)V
    //   440: goto -93 -> 347
    //   443: aload_3
    //   444: invokeinterface 43 1 0
    //   449: astore 11
    //   451: aload 11
    //   453: invokeinterface 49 1 0
    //   458: ifeq +101 -> 559
    //   461: aload 11
    //   463: invokeinterface 53 1 0
    //   468: checkcast 90	com/keniu/security/d/e
    //   471: astore 15
    //   473: iload 9
    //   475: ifeq +24 -> 499
    //   478: aload 15
    //   480: iconst_1
    //   481: invokevirtual 161	com/keniu/security/d/e:a	(Z)V
    //   484: aload_0
    //   485: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   488: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   491: aload 15
    //   493: invokevirtual 153	com/jxphone/mosecurity/b/c:a	(Lcom/keniu/security/d/e;)V
    //   496: goto -45 -> 451
    //   499: aload_0
    //   500: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   503: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   506: aload 15
    //   508: invokevirtual 156	com/jxphone/mosecurity/b/c:b	(Lcom/keniu/security/d/e;)Z
    //   511: ifne +24 -> 535
    //   514: aload 15
    //   516: iconst_1
    //   517: invokevirtual 161	com/keniu/security/d/e:a	(Z)V
    //   520: aload_0
    //   521: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   524: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   527: aload 15
    //   529: invokevirtual 153	com/jxphone/mosecurity/b/c:a	(Lcom/keniu/security/d/e;)V
    //   532: goto -81 -> 451
    //   535: aload_0
    //   536: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   539: invokestatic 143	com/keniu/security/process/ProcessManagerActivity:i	(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;
    //   542: aload 15
    //   544: invokevirtual 158	com/jxphone/mosecurity/b/c:c	(Lcom/keniu/security/d/e;)Z
    //   547: ifeq -96 -> 451
    //   550: aload 15
    //   552: iconst_1
    //   553: invokevirtual 161	com/keniu/security/d/e:a	(Z)V
    //   556: goto -105 -> 451
    //   559: aload_0
    //   560: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   563: new 163	com/keniu/security/process/o
    //   566: dup
    //   567: aload_0
    //   568: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   571: aload_0
    //   572: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   575: aload_3
    //   576: invokespecial 166	com/keniu/security/process/o:<init>	(Lcom/keniu/security/process/ProcessManagerActivity;Landroid/content/Context;Ljava/util/List;)V
    //   579: invokestatic 169	com/keniu/security/process/ProcessManagerActivity:a	(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/o;)Lcom/keniu/security/process/o;
    //   582: pop
    //   583: aload_0
    //   584: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   587: new 163	com/keniu/security/process/o
    //   590: dup
    //   591: aload_0
    //   592: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   595: aload_0
    //   596: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   599: aload 4
    //   601: invokespecial 166	com/keniu/security/process/o:<init>	(Lcom/keniu/security/process/ProcessManagerActivity;Landroid/content/Context;Ljava/util/List;)V
    //   604: invokestatic 171	com/keniu/security/process/ProcessManagerActivity:b	(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/o;)Lcom/keniu/security/process/o;
    //   607: pop
    //   608: aload_0
    //   609: getfield 12	com/keniu/security/process/r:a	Lcom/keniu/security/process/ProcessManagerActivity;
    //   612: invokestatic 175	com/keniu/security/process/ProcessManagerActivity:u	(Lcom/keniu/security/process/ProcessManagerActivity;)V
    //   615: aload_0
    //   616: getfield 17	com/keniu/security/process/r:b	Landroid/os/Handler;
    //   619: iconst_2
    //   620: invokevirtual 181	android/os/Handler:sendEmptyMessage	(I)Z
    //   623: pop
    //   624: return
    //   625: iinc 19 1
    //   628: goto -533 -> 95
    //   631: astore 22
    //   633: goto -8 -> 625
    //
    // Exception table:
    //   from	to	target	type
    //   0	124	271	java/lang/Exception
    //   129	268	271	java/lang/Exception
    //   275	624	271	java/lang/Exception
    //   129	268	631	android/content/pm/PackageManager$NameNotFoundException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.r
 * JD-Core Version:    0.6.2
 */