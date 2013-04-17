import QQPIM.ChannelInfo;
import QQPIM.ClientVersionInfo;
import QQPIM.DeviceInfo;
import QQPIM.GUIDInfo;
import QQPIM.SUI;
import QQPIM.ServerCmdInfo;
import QQPIM.SoftKey;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.qq.jce.wup.UniPacket;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

final class gh extends BaseManager
{
  private static String a = "WupSessionManagerImpl";
  private Context b;
  private ge c;
  private boolean d;

  private int a(UniPacket paramUniPacket1, UniPacket paramUniPacket2, int paramInt)
  {
    paramUniPacket1.setRequestId(paramInt);
    paramUniPacket1.setServantName(ge.a(paramInt));
    paramUniPacket1.setFuncName(ge.b(paramInt));
    paramUniPacket1.setEncodeName("UTF-8");
    paramUniPacket2.setEncodeName("UTF-8");
    return this.c.d();
  }

  // ERROR //
  private int a(UniPacket paramUniPacket1, UniPacket paramUniPacket2, boolean paramBoolean)
  {
    // Byte code:
    //   0: sipush -6000
    //   3: istore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aload_1
    //   9: invokevirtual 65	com/qq/jce/wup/UniPacket:encode	()[B
    //   12: astore 20
    //   14: aload_0
    //   15: getfield 67	gh:b	Landroid/content/Context;
    //   18: aload 20
    //   20: aconst_null
    //   21: invokestatic 73	com/tencent/tccdb/TccCryptor:encrypt	(Landroid/content/Context;[B[B)[B
    //   24: astore 21
    //   26: getstatic 74	ge:a	Ljava/lang/String;
    //   29: invokestatic 79	ev:a	(Ljava/lang/String;)Lev;
    //   32: astore 22
    //   34: aload 22
    //   36: astore 7
    //   38: aload 7
    //   40: ldc 81
    //   42: invokevirtual 83	ev:b	(Ljava/lang/String;)V
    //   45: aload 7
    //   47: aload 21
    //   49: invokevirtual 86	ev:a	([B)V
    //   52: aload 7
    //   54: invokevirtual 88	ev:a	()I
    //   57: pop
    //   58: new 90	java/util/concurrent/atomic/AtomicReference
    //   61: dup
    //   62: invokespecial 91	java/util/concurrent/atomic/AtomicReference:<init>	()V
    //   65: astore 26
    //   67: aload 7
    //   69: aload 26
    //   71: invokevirtual 94	ev:a	(Ljava/util/concurrent/atomic/AtomicReference;)I
    //   74: istore 27
    //   76: iload 27
    //   78: ifeq +35 -> 113
    //   81: aload 7
    //   83: ifnull +8 -> 91
    //   86: aload 7
    //   88: invokevirtual 96	ev:d	()V
    //   91: aload_0
    //   92: getfield 98	gh:d	Z
    //   95: ifne +11 -> 106
    //   98: iload 27
    //   100: ifne +6 -> 106
    //   103: invokestatic 103	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   106: iload 27
    //   108: istore 10
    //   110: iload 10
    //   112: ireturn
    //   113: aload 26
    //   115: invokevirtual 107	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   118: checkcast 109	[B
    //   121: astore 29
    //   123: iload_3
    //   124: ifne +28 -> 152
    //   127: aload 29
    //   129: ifnull +23 -> 152
    //   132: aload 29
    //   134: arraylength
    //   135: ifle +17 -> 152
    //   138: aload_2
    //   139: aload_0
    //   140: getfield 67	gh:b	Landroid/content/Context;
    //   143: aload 29
    //   145: aconst_null
    //   146: invokestatic 112	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   149: invokevirtual 115	com/qq/jce/wup/UniPacket:decode	([B)V
    //   152: aload 7
    //   154: ifnull +8 -> 162
    //   157: aload 7
    //   159: invokevirtual 96	ev:d	()V
    //   162: aload_0
    //   163: getfield 98	gh:d	Z
    //   166: istore 30
    //   168: iconst_0
    //   169: istore 10
    //   171: iload 30
    //   173: ifne -63 -> 110
    //   176: invokestatic 103	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   179: iconst_0
    //   180: istore 10
    //   182: goto -72 -> 110
    //   185: astore 16
    //   187: iload 4
    //   189: istore 10
    //   191: aload 16
    //   193: astore 17
    //   195: aload 17
    //   197: invokevirtual 116	eq:a	()I
    //   200: istore 10
    //   202: getstatic 18	gh:a	Ljava/lang/String;
    //   205: pop
    //   206: new 118	java/lang/StringBuilder
    //   209: dup
    //   210: ldc 120
    //   212: invokespecial 122	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload 17
    //   217: invokevirtual 126	eq:getMessage	()Ljava/lang/String;
    //   220: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: invokestatic 138	gk:a	(Ljava/lang/Object;)V
    //   229: aload 17
    //   231: invokevirtual 141	eq:printStackTrace	()V
    //   234: aload 5
    //   236: ifnull +8 -> 244
    //   239: aload 5
    //   241: invokevirtual 96	ev:d	()V
    //   244: aload_0
    //   245: getfield 98	gh:d	Z
    //   248: ifne -138 -> 110
    //   251: iload 10
    //   253: ifne -143 -> 110
    //   256: invokestatic 103	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   259: goto -149 -> 110
    //   262: astore 12
    //   264: aload 12
    //   266: astore 13
    //   268: aconst_null
    //   269: astore 7
    //   271: sipush -6057
    //   274: istore 10
    //   276: getstatic 18	gh:a	Ljava/lang/String;
    //   279: pop
    //   280: new 118	java/lang/StringBuilder
    //   283: dup
    //   284: ldc 143
    //   286: invokespecial 122	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   289: aload 13
    //   291: invokevirtual 144	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   294: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: invokestatic 138	gk:a	(Ljava/lang/Object;)V
    //   303: aload 13
    //   305: invokevirtual 145	java/lang/IllegalArgumentException:printStackTrace	()V
    //   308: aload 7
    //   310: ifnull +8 -> 318
    //   313: aload 7
    //   315: invokevirtual 96	ev:d	()V
    //   318: aload_0
    //   319: getfield 98	gh:d	Z
    //   322: ifne -212 -> 110
    //   325: goto -215 -> 110
    //   328: astore 11
    //   330: aconst_null
    //   331: astore 7
    //   333: aload 11
    //   335: athrow
    //   336: astore 6
    //   338: aload 7
    //   340: ifnull +8 -> 348
    //   343: aload 7
    //   345: invokevirtual 96	ev:d	()V
    //   348: aload_0
    //   349: getfield 98	gh:d	Z
    //   352: ifne +11 -> 363
    //   355: iload 4
    //   357: ifne +6 -> 363
    //   360: invokestatic 103	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   363: aload 6
    //   365: athrow
    //   366: astore 8
    //   368: aconst_null
    //   369: astore 7
    //   371: getstatic 18	gh:a	Ljava/lang/String;
    //   374: pop
    //   375: new 118	java/lang/StringBuilder
    //   378: dup
    //   379: ldc 147
    //   381: invokespecial 122	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   384: aload 8
    //   386: invokevirtual 148	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   389: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: invokestatic 138	gk:a	(Ljava/lang/Object;)V
    //   398: aload 8
    //   400: invokevirtual 149	java/lang/Throwable:printStackTrace	()V
    //   403: aload 7
    //   405: ifnull +8 -> 413
    //   408: aload 7
    //   410: invokevirtual 96	ev:d	()V
    //   413: aload_0
    //   414: getfield 98	gh:d	Z
    //   417: ifne +119 -> 536
    //   420: iload 4
    //   422: istore 10
    //   424: goto -314 -> 110
    //   427: astore 6
    //   429: aconst_null
    //   430: astore 7
    //   432: goto -94 -> 338
    //   435: astore 6
    //   437: iload 27
    //   439: istore 4
    //   441: goto -103 -> 338
    //   444: astore 18
    //   446: aload 5
    //   448: astore 7
    //   450: iload 10
    //   452: istore 4
    //   454: aload 18
    //   456: astore 6
    //   458: goto -120 -> 338
    //   461: astore 14
    //   463: iload 10
    //   465: istore 4
    //   467: aload 14
    //   469: astore 6
    //   471: goto -133 -> 338
    //   474: astore 8
    //   476: goto -105 -> 371
    //   479: astore 11
    //   481: goto -148 -> 333
    //   484: astore 11
    //   486: iload 27
    //   488: istore 4
    //   490: goto -157 -> 333
    //   493: astore 24
    //   495: aload 24
    //   497: astore 13
    //   499: goto -228 -> 271
    //   502: astore 23
    //   504: aload 7
    //   506: astore 5
    //   508: iload 4
    //   510: istore 10
    //   512: aload 23
    //   514: astore 17
    //   516: goto -321 -> 195
    //   519: astore 28
    //   521: aload 28
    //   523: astore 17
    //   525: iload 27
    //   527: istore 10
    //   529: aload 7
    //   531: astore 5
    //   533: goto -338 -> 195
    //   536: iload 4
    //   538: istore 10
    //   540: goto -430 -> 110
    //
    // Exception table:
    //   from	to	target	type
    //   8	34	185	eq
    //   8	34	262	java/lang/IllegalArgumentException
    //   8	34	328	er
    //   38	76	336	finally
    //   333	336	336	finally
    //   371	403	336	finally
    //   8	34	366	java/lang/Throwable
    //   8	34	427	finally
    //   113	152	435	finally
    //   195	234	444	finally
    //   276	308	461	finally
    //   38	76	474	java/lang/Throwable
    //   113	152	474	java/lang/Throwable
    //   38	76	479	er
    //   113	152	484	er
    //   38	76	493	java/lang/IllegalArgumentException
    //   113	152	493	java/lang/IllegalArgumentException
    //   38	76	502	eq
    //   113	152	519	eq
  }

  private static ChannelInfo a(Context paramContext)
  {
    ChannelInfo localChannelInfo = new ChannelInfo();
    String str1 = TMSApplication.getStrFromEnvMap("channel");
    if (str1 == null)
      str1 = "";
    localChannelInfo.setId(str1);
    localChannelInfo.setProduct(TMSApplication.getIntFromEnvMap("product"));
    PackageManager localPackageManager = paramContext.getPackageManager();
    localChannelInfo.setIsbuildin(0);
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 8192);
      if ((localApplicationInfo != null) && ((0x1 & localApplicationInfo.flags) != 0))
        localChannelInfo.setIsbuildin(1);
      label78: arrayOfString = new String[] { "com.tencent.qqpimsecure", "com.tencent.qq", "com.qzone", "com.tencent.qqphonebook", "com.tencent.mtt", "com.tencent.WBlog", "com.tencent.qqgame.hallinstaller.hall" };
      localfs = (fs)ManagerCreator.getManager(fs.class);
      localArrayList = new ArrayList();
      int i = arrayOfString.length;
      j = 0;
      if (j >= i)
      {
        localChannelInfo.setChecksoft(localArrayList);
        return localChannelInfo;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      String[] arrayOfString;
      fs localfs;
      ArrayList localArrayList;
      int j;
      while (true)
        localNameNotFoundException.printStackTrace();
      fq localfq = localfs.a(arrayOfString[j], 25);
      Integer localInteger;
      SoftKey localSoftKey;
      int k;
      if (localfq != null)
      {
        Boolean localBoolean = (Boolean)localfq.b("isSystem");
        localInteger = (Integer)localfq.b("versionCode");
        localSoftKey = new SoftKey();
        String str2 = (String)localfq.b("signatureCermMD5");
        if (str2 == null)
          str2 = "";
        localSoftKey.setUid(str2);
        String str3 = (String)localfq.b("pkgName");
        if (str3 == null)
          str3 = "";
        localSoftKey.setSoftname(str3);
        String str4 = (String)localfq.b("appName");
        if (str4 == null)
          str4 = "";
        localSoftKey.setName(str4);
        if ((localBoolean != null) && (localBoolean.booleanValue()))
          break label427;
        k = 0;
        localSoftKey.setIsbuildin(k);
        String str5 = (String)localfq.b("version");
        if (str5 == null)
          str5 = "";
        localSoftKey.setVersion(str5);
        if (localInteger != null)
          break label433;
      }
      label427: label433: for (int m = 0; ; m = localInteger.intValue())
      {
        localSoftKey.setVersioncode(m);
        localSoftKey.setProducttime("");
        String str6 = (String)localfq.b("signatureCermMD5");
        if (str6 == null)
          str6 = "";
        localSoftKey.setCert(str6);
        localArrayList.add(localSoftKey);
        j++;
        break;
        k = 1;
        break label327;
      }
    }
    catch (Exception localException)
    {
      label327: break label78;
    }
  }

  public final int a()
  {
    this.d = true;
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 5);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.a());
      localUniPacket1.put("userinfo", this.c.b());
      localUniPacket1.put("channelinfo", a(this.b));
      i = a(localUniPacket1, localUniPacket2, true);
      this.d = false;
    }
  }

  public final int a(DeviceInfo paramDeviceInfo, AtomicReference<GUIDInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    localUniPacket1.setRequestId(18);
    localUniPacket1.setServantName(ge.a(18));
    localUniPacket1.setFuncName(ge.b(18));
    localUniPacket1.setEncodeName("UTF-8");
    localUniPacket2.setEncodeName("UTF-8");
    localUniPacket1.put("phonetype", this.c.a());
    localUniPacket1.put("userinfo", this.c.b());
    localUniPacket1.put("deviceinfo", paramDeviceInfo);
    int i = a(localUniPacket1, localUniPacket2, false);
    if (i != 0);
    while (true)
    {
      return i;
      GUIDInfo localGUIDInfo = (GUIDInfo)localUniPacket2.getByClass("guidinfo", new GUIDInfo());
      if (localGUIDInfo != null)
        paramAtomicReference.set(localGUIDInfo);
      i = 0;
    }
  }

  public final int a(ArrayList<SUI> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 31);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("suikey", this.c.c());
      localUniPacket1.put("vecsui", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int a(List<ClientVersionInfo> paramList, AtomicReference<ServerCmdInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 12);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.a());
      localUniPacket1.put("userinfo", this.c.b());
      localUniPacket1.put("vecclient", paramList);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ServerCmdInfo localServerCmdInfo = (ServerCmdInfo)localUniPacket2.getByClass("cmdinfo", new ServerCmdInfo());
        if (localServerCmdInfo != null)
          paramAtomicReference.set(localServerCmdInfo);
        i = 0;
      }
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = paramContext;
    this.c = new ge(paramContext);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gh
 * JD-Core Version:    0.6.2
 */