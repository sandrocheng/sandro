import QQPIM.ADInfo;
import QQPIM.AnalyseInfo;
import QQPIM.BrowserClient;
import QQPIM.BrowserResult;
import QQPIM.BrowserUrl;
import QQPIM.Category;
import QQPIM.ChangeUrlReqInfo;
import QQPIM.ChangeUrlResInfo;
import QQPIM.ChannelInfo;
import QQPIM.ClientVersionInfo;
import QQPIM.CmdInfoRes;
import QQPIM.CommentInfo;
import QQPIM.ConfInfo;
import QQPIM.ConfSrc;
import QQPIM.DeviceInfo;
import QQPIM.DownInfo;
import QQPIM.FBIllegaSoft;
import QQPIM.FBMobile;
import QQPIM.FBSoftDesc;
import QQPIM.FBWBList;
import QQPIM.GUIDInfo;
import QQPIM.HotWordReqInfo;
import QQPIM.HotWordResInfo;
import QQPIM.LicenceCheckResult;
import QQPIM.LicenceInfo;
import QQPIM.MalSoftType;
import QQPIM.MySoftSimpleInfo;
import QQPIM.NotifyInfo;
import QQPIM.PKResultInfo;
import QQPIM.PKUserInfo;
import QQPIM.PhoneInfo;
import QQPIM.RequestTemplate;
import QQPIM.ResPKPosition;
import QQPIM.RespMark;
import QQPIM.RetInfo;
import QQPIM.RspTemplate;
import QQPIM.STCloudOrderReq;
import QQPIM.STOrderReAct;
import QQPIM.STQuery;
import QQPIM.STQueryResult;
import QQPIM.STReActBack;
import QQPIM.STReportBack;
import QQPIM.STRetInfo;
import QQPIM.STSmsInfo;
import QQPIM.STTrafficTemplate;
import QQPIM.STVecCloudBak;
import QQPIM.STVecCodeResult;
import QQPIM.STVecNetLocal;
import QQPIM.SUI;
import QQPIM.ServerCmdInfo;
import QQPIM.ServerInfo;
import QQPIM.SmsReport;
import QQPIM.SoftAction;
import QQPIM.SoftFeature;
import QQPIM.SoftKey;
import QQPIM.SoftServerInfo;
import QQPIM.SoftSimpleInfo;
import QQPIM.TelReport;
import QQPIM.TipInfo;
import QQPIM.UnknownSoftInfo;
import QQPIM.UrlCheckRequest;
import QQPIM.UrlCheckResponse;
import QQPIM.UserInfo;
import QQPIM.VECReportError;
import QQPIM.VirusClientInfo;
import QQPIM.VirusInfo;
import QQPIM.VirusServerInfo;
import QQPIM.stAntiTheftReport;
import QQPIM.stBindPhoneInfo;
import QQPIM.stUrgentInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.qq.jce.wup.UniPacket;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.wupsession.WupConfig;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public final class bzf extends BaseManager
{
  private static String a = "WupSessionManagerImpl";
  private Context b;
  private WupConfig c;
  private boolean d;

  private int a(UniPacket paramUniPacket1, UniPacket paramUniPacket2, int paramInt)
  {
    paramUniPacket1.setRequestId(paramInt);
    paramUniPacket1.setServantName(WupConfig.getServantName(paramInt));
    paramUniPacket1.setFuncName(WupConfig.getFuncName(paramInt));
    paramUniPacket1.setEncodeName("UTF-8");
    paramUniPacket2.setEncodeName("UTF-8");
    return this.c.checkGuid();
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
    //   9: invokevirtual 68	com/qq/jce/wup/UniPacket:encode	()[B
    //   12: astore 23
    //   14: aload_0
    //   15: getfield 70	bzf:b	Landroid/content/Context;
    //   18: aload 23
    //   20: aconst_null
    //   21: invokestatic 76	com/tencent/tccdb/TccCryptor:encrypt	(Landroid/content/Context;[B[B)[B
    //   24: astore 24
    //   26: getstatic 79	com/tencent/tmsecure/module/wupsession/WupConfig:HOST_URL	Ljava/lang/String;
    //   29: invokestatic 84	btg:a	(Ljava/lang/String;)Lbtg;
    //   32: astore 25
    //   34: aload 25
    //   36: astore 7
    //   38: aload 7
    //   40: ldc 86
    //   42: invokevirtual 88	btg:b	(Ljava/lang/String;)V
    //   45: aload 7
    //   47: aload 24
    //   49: invokevirtual 91	btg:a	([B)V
    //   52: aload 7
    //   54: invokevirtual 93	btg:a	()I
    //   57: pop
    //   58: new 95	java/util/concurrent/atomic/AtomicReference
    //   61: dup
    //   62: invokespecial 96	java/util/concurrent/atomic/AtomicReference:<init>	()V
    //   65: astore 29
    //   67: aload 7
    //   69: aload 29
    //   71: invokevirtual 99	btg:a	(Ljava/util/concurrent/atomic/AtomicReference;)I
    //   74: istore 30
    //   76: iload 30
    //   78: ifeq +35 -> 113
    //   81: aload 7
    //   83: ifnull +8 -> 91
    //   86: aload 7
    //   88: invokevirtual 101	btg:d	()V
    //   91: aload_0
    //   92: getfield 103	bzf:d	Z
    //   95: ifne +11 -> 106
    //   98: iload 30
    //   100: ifne +6 -> 106
    //   103: invokestatic 108	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   106: iload 30
    //   108: istore 11
    //   110: iload 11
    //   112: ireturn
    //   113: aload 29
    //   115: invokevirtual 112	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   118: checkcast 114	[B
    //   121: astore 32
    //   123: iload_3
    //   124: ifne +28 -> 152
    //   127: aload 32
    //   129: ifnull +23 -> 152
    //   132: aload 32
    //   134: arraylength
    //   135: ifle +17 -> 152
    //   138: aload_2
    //   139: aload_0
    //   140: getfield 70	bzf:b	Landroid/content/Context;
    //   143: aload 32
    //   145: aconst_null
    //   146: invokestatic 117	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   149: invokevirtual 120	com/qq/jce/wup/UniPacket:decode	([B)V
    //   152: aload 7
    //   154: ifnull +8 -> 162
    //   157: aload 7
    //   159: invokevirtual 101	btg:d	()V
    //   162: aload_0
    //   163: getfield 103	bzf:d	Z
    //   166: istore 33
    //   168: iconst_0
    //   169: istore 11
    //   171: iload 33
    //   173: ifne -63 -> 110
    //   176: invokestatic 108	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   179: iconst_0
    //   180: istore 11
    //   182: goto -72 -> 110
    //   185: astore 18
    //   187: iload 4
    //   189: istore 11
    //   191: aload 18
    //   193: astore 19
    //   195: aload 19
    //   197: invokevirtual 123	com/tencent/tmsecure/exception/NetWorkException:getErrCode	()I
    //   200: istore 11
    //   202: getstatic 18	bzf:a	Ljava/lang/String;
    //   205: pop
    //   206: new 125	java/lang/StringBuilder
    //   209: dup
    //   210: ldc 127
    //   212: invokespecial 129	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload 19
    //   217: invokevirtual 133	com/tencent/tmsecure/exception/NetWorkException:getMessage	()Ljava/lang/String;
    //   220: invokevirtual 137	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: pop
    //   227: aload 19
    //   229: invokevirtual 143	com/tencent/tmsecure/exception/NetWorkException:printStackTrace	()V
    //   232: aload 5
    //   234: ifnull +8 -> 242
    //   237: aload 5
    //   239: invokevirtual 101	btg:d	()V
    //   242: aload_0
    //   243: getfield 103	bzf:d	Z
    //   246: ifne -136 -> 110
    //   249: iload 11
    //   251: ifne -141 -> 110
    //   254: invokestatic 108	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   257: goto -147 -> 110
    //   260: astore 13
    //   262: aload 13
    //   264: astore 14
    //   266: aconst_null
    //   267: astore 7
    //   269: sipush -6057
    //   272: istore 11
    //   274: getstatic 18	bzf:a	Ljava/lang/String;
    //   277: pop
    //   278: new 125	java/lang/StringBuilder
    //   281: dup
    //   282: ldc 145
    //   284: invokespecial 129	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   287: aload 14
    //   289: invokevirtual 146	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   292: invokevirtual 137	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   298: pop
    //   299: aload 14
    //   301: invokevirtual 147	java/lang/IllegalArgumentException:printStackTrace	()V
    //   304: aload 7
    //   306: ifnull +8 -> 314
    //   309: aload 7
    //   311: invokevirtual 101	btg:d	()V
    //   314: aload_0
    //   315: getfield 103	bzf:d	Z
    //   318: ifne -208 -> 110
    //   321: goto -211 -> 110
    //   324: astore 12
    //   326: aconst_null
    //   327: astore 7
    //   329: aload 12
    //   331: athrow
    //   332: astore 6
    //   334: aload 7
    //   336: ifnull +8 -> 344
    //   339: aload 7
    //   341: invokevirtual 101	btg:d	()V
    //   344: aload_0
    //   345: getfield 103	bzf:d	Z
    //   348: ifne +11 -> 359
    //   351: iload 4
    //   353: ifne +6 -> 359
    //   356: invokestatic 108	com/tencent/tmsecure/common/TMSApplication:reportChannelInfo	()V
    //   359: aload 6
    //   361: athrow
    //   362: astore 8
    //   364: aconst_null
    //   365: astore 7
    //   367: getstatic 18	bzf:a	Ljava/lang/String;
    //   370: pop
    //   371: new 125	java/lang/StringBuilder
    //   374: dup
    //   375: ldc 149
    //   377: invokespecial 129	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   380: aload 8
    //   382: invokevirtual 150	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   385: invokevirtual 137	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: invokevirtual 140	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: pop
    //   392: aload 8
    //   394: invokevirtual 151	java/lang/Throwable:printStackTrace	()V
    //   397: aload 7
    //   399: ifnull +8 -> 407
    //   402: aload 7
    //   404: invokevirtual 101	btg:d	()V
    //   407: aload_0
    //   408: getfield 103	bzf:d	Z
    //   411: ifne +119 -> 530
    //   414: iload 4
    //   416: istore 11
    //   418: goto -308 -> 110
    //   421: astore 6
    //   423: aconst_null
    //   424: astore 7
    //   426: goto -92 -> 334
    //   429: astore 6
    //   431: iload 30
    //   433: istore 4
    //   435: goto -101 -> 334
    //   438: astore 20
    //   440: aload 5
    //   442: astore 7
    //   444: iload 11
    //   446: istore 4
    //   448: aload 20
    //   450: astore 6
    //   452: goto -118 -> 334
    //   455: astore 15
    //   457: iload 11
    //   459: istore 4
    //   461: aload 15
    //   463: astore 6
    //   465: goto -131 -> 334
    //   468: astore 8
    //   470: goto -103 -> 367
    //   473: astore 12
    //   475: goto -146 -> 329
    //   478: astore 12
    //   480: iload 30
    //   482: istore 4
    //   484: goto -155 -> 329
    //   487: astore 27
    //   489: aload 27
    //   491: astore 14
    //   493: goto -224 -> 269
    //   496: astore 26
    //   498: aload 7
    //   500: astore 5
    //   502: iload 4
    //   504: istore 11
    //   506: aload 26
    //   508: astore 19
    //   510: goto -315 -> 195
    //   513: astore 31
    //   515: aload 31
    //   517: astore 19
    //   519: iload 30
    //   521: istore 11
    //   523: aload 7
    //   525: astore 5
    //   527: goto -332 -> 195
    //   530: iload 4
    //   532: istore 11
    //   534: goto -424 -> 110
    //
    // Exception table:
    //   from	to	target	type
    //   8	34	185	com/tencent/tmsecure/exception/NetWorkException
    //   8	34	260	java/lang/IllegalArgumentException
    //   8	34	324	com/tencent/tmsecure/exception/NetworkOnMainThreadException
    //   38	76	332	finally
    //   329	332	332	finally
    //   367	397	332	finally
    //   8	34	362	java/lang/Throwable
    //   8	34	421	finally
    //   113	152	429	finally
    //   195	232	438	finally
    //   274	304	455	finally
    //   38	76	468	java/lang/Throwable
    //   113	152	468	java/lang/Throwable
    //   38	76	473	com/tencent/tmsecure/exception/NetworkOnMainThreadException
    //   113	152	478	com/tencent/tmsecure/exception/NetworkOnMainThreadException
    //   38	76	487	java/lang/IllegalArgumentException
    //   113	152	487	java/lang/IllegalArgumentException
    //   38	76	496	com/tencent/tmsecure/exception/NetWorkException
    //   113	152	513	com/tencent/tmsecure/exception/NetWorkException
  }

  private static ChannelInfo a(Context paramContext)
  {
    ChannelInfo localChannelInfo = new ChannelInfo();
    localChannelInfo.setId(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("channel")));
    localChannelInfo.setProduct(TMSApplication.getIntFromEnvMap("product"));
    PackageManager localPackageManager = paramContext.getPackageManager();
    localChannelInfo.setIsbuildin(0);
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 8192);
      if ((localApplicationInfo != null) && ((0x1 & localApplicationInfo.flags) != 0))
        localChannelInfo.setIsbuildin(1);
      label72: arrayOfString = new String[] { "com.tencent.qqpimsecure", "com.tencent.qq", "com.qzone", "com.tencent.qqphonebook", "com.tencent.mtt", "com.tencent.WBlog", "com.tencent.qqgame.hallinstaller.hall" };
      localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
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
      SoftwareManager localSoftwareManager;
      ArrayList localArrayList;
      int j;
      while (true)
        localNameNotFoundException.printStackTrace();
      AppEntity localAppEntity = localSoftwareManager.getAppInfo(arrayOfString[j], 25);
      Integer localInteger;
      SoftKey localSoftKey;
      int k;
      if (localAppEntity != null)
      {
        Boolean localBoolean = (Boolean)localAppEntity.get("isSystem");
        localInteger = (Integer)localAppEntity.get("versionCode");
        localSoftKey = new SoftKey();
        localSoftKey.setUid(StringUtil.assertNotNullString((String)localAppEntity.get("signatureCermMD5")));
        localSoftKey.setSoftname(StringUtil.assertNotNullString((String)localAppEntity.get("pkgName")));
        localSoftKey.setName(StringUtil.assertNotNullString((String)localAppEntity.get("appName")));
        if ((localBoolean != null) && (localBoolean.booleanValue()))
          break label374;
        k = 0;
        localSoftKey.setIsbuildin(k);
        localSoftKey.setVersion(StringUtil.assertNotNullString((String)localAppEntity.get("version")));
        if (localInteger != null)
          break label380;
      }
      for (int m = 0; ; m = localInteger.intValue())
      {
        localSoftKey.setVersioncode(m);
        localSoftKey.setProducttime("");
        localSoftKey.setCert(StringUtil.assertNotNullString((String)localAppEntity.get("signatureCermMD5")));
        localArrayList.add(localSoftKey);
        j++;
        break;
        k = 1;
        break label292;
      }
    }
    catch (Exception localException)
    {
      label292: label374: label380: break label72;
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
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("channelinfo", a(this.b));
      i = a(localUniPacket1, localUniPacket2, true);
      this.d = false;
    }
  }

  public final int a(BrowserClient paramBrowserClient, BrowserUrl paramBrowserUrl, AtomicReference<BrowserResult> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 41);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("client", paramBrowserClient);
      localUniPacket1.put("url", paramBrowserUrl);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        BrowserResult localBrowserResult = (BrowserResult)localUniPacket2.getByClass("result", new BrowserResult());
        if (localBrowserResult != null)
          paramAtomicReference.set(localBrowserResult);
        i = 0;
      }
    }
  }

  public final int a(ChangeUrlReqInfo paramChangeUrlReqInfo, AtomicReference<ChangeUrlResInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 22);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("urlreqinfo", paramChangeUrlReqInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ChangeUrlResInfo localChangeUrlResInfo = (ChangeUrlResInfo)localUniPacket2.getByClass("urlresinfo", new ChangeUrlResInfo());
        if (localChangeUrlResInfo != null)
          paramAtomicReference.set(localChangeUrlResInfo);
        i = 0;
      }
    }
  }

  public final int a(CmdInfoRes paramCmdInfoRes)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 13);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("cmdinfores", paramCmdInfoRes);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int a(DeviceInfo paramDeviceInfo, AtomicReference<GUIDInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    localUniPacket1.setRequestId(18);
    localUniPacket1.setServantName(WupConfig.getServantName(18));
    localUniPacket1.setFuncName(WupConfig.getFuncName(18));
    localUniPacket1.setEncodeName("UTF-8");
    localUniPacket2.setEncodeName("UTF-8");
    localUniPacket1.put("phonetype", this.c.getPhoneType());
    localUniPacket1.put("userinfo", this.c.getUserInfo());
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

  public final int a(DownInfo paramDownInfo)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 14);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("downinfo", paramDownInfo);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int a(HotWordReqInfo paramHotWordReqInfo, AtomicReference<HotWordResInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 19);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("hotwordreq", paramHotWordReqInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        HotWordResInfo localHotWordResInfo = (HotWordResInfo)localUniPacket2.getByClass("hotwordres", new HotWordResInfo());
        if (localHotWordResInfo != null)
          paramAtomicReference.set(localHotWordResInfo);
        i = 0;
      }
    }
  }

  public final int a(LicenceInfo paramLicenceInfo, LicenceCheckResult paramLicenceCheckResult)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 42);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("licinfo", paramLicenceInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        RetInfo localRetInfo = (RetInfo)localUniPacket2.getByClass("outinfo", new RetInfo());
        if (localRetInfo == null)
        {
          i = -2;
        }
        else
        {
          paramLicenceCheckResult.value = localRetInfo;
          Integer localInteger = (Integer)localUniPacket2.getByClass("", Integer.valueOf(0));
          if (localInteger == null)
            i = -2;
          else
            i = localInteger.intValue();
        }
      }
    }
  }

  public final int a(PKResultInfo paramPKResultInfo, AtomicReference<RespMark> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 49);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("resultinfo", paramPKResultInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        RespMark localRespMark = (RespMark)localUniPacket2.getByClass("respmark", new RespMark());
        if (localRespMark != null)
          paramAtomicReference.set(localRespMark);
        i = 0;
      }
    }
  }

  public final int a(PhoneInfo paramPhoneInfo, AtomicReference<RespMark> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 43);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("phoneinfo", paramPhoneInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        RespMark localRespMark = (RespMark)localUniPacket2.getByClass("respmark", new RespMark());
        if (localRespMark != null)
          paramAtomicReference.set(localRespMark);
        i = 0;
      }
    }
  }

  public final int a(STCloudOrderReq paramSTCloudOrderReq, AtomicReference<STVecCloudBak> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 34);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("cloudreq", paramSTCloudOrderReq);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        STVecCloudBak localSTVecCloudBak = (STVecCloudBak)localUniPacket2.getByClass("cloudrsp", new STVecCloudBak());
        if (localSTVecCloudBak != null)
          paramAtomicReference.set(localSTVecCloudBak);
        i = 0;
      }
    }
  }

  public final int a(STOrderReAct paramSTOrderReAct, AtomicReference<STReActBack> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 38);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("orderreq", paramSTOrderReAct);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        STReActBack localSTReActBack = (STReActBack)localUniPacket2.getByClass("orderrsp", new STReActBack());
        if (localSTReActBack != null)
          paramAtomicReference.set(localSTReActBack);
        i = 0;
      }
    }
  }

  public final int a(STQuery paramSTQuery, AtomicReference<STQueryResult> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 33);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("queryParam", paramSTQuery);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        STQueryResult localSTQueryResult = (STQueryResult)localUniPacket2.getByClass("queryresult", new STQueryResult());
        if (localSTQueryResult != null)
          paramAtomicReference.set(localSTQueryResult);
        i = 0;
      }
    }
  }

  public final int a(STSmsInfo paramSTSmsInfo, AtomicReference<STTrafficTemplate> paramAtomicReference, AtomicReference<STRetInfo> paramAtomicReference1)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 32);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("smsinfo", paramSTSmsInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        STTrafficTemplate localSTTrafficTemplate = (STTrafficTemplate)localUniPacket2.getByClass("traffictemplate", new STTrafficTemplate());
        if (localSTTrafficTemplate != null)
          paramAtomicReference.set(localSTTrafficTemplate);
        STRetInfo localSTRetInfo = (STRetInfo)localUniPacket2.getByClass("stretinfo", new STRetInfo());
        if (paramAtomicReference1 != null)
          paramAtomicReference1.set(localSTRetInfo);
        i = 0;
      }
    }
  }

  public final int a(STVecNetLocal paramSTVecNetLocal)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 36);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("vecnetlocal", paramSTVecNetLocal);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int a(VECReportError paramVECReportError, AtomicReference<STReportBack> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 35);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("reportmsg", paramVECReportError);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        STReportBack localSTReportBack = (STReportBack)localUniPacket2.getByClass("reportback", new STReportBack());
        if (localSTReportBack != null)
          paramAtomicReference.set(localSTReportBack);
        i = 0;
      }
    }
  }

  public final int a(VirusClientInfo paramVirusClientInfo, AtomicReference<VirusServerInfo> paramAtomicReference, ArrayList<VirusInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 7);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("clientinfo", paramVirusClientInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        VirusServerInfo localVirusServerInfo = (VirusServerInfo)localUniPacket2.getByClass("serverinfo", new VirusServerInfo());
        if (localVirusServerInfo != null)
          paramAtomicReference.set(localVirusServerInfo);
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new VirusInfo());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("virusinfos", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList.clear();
          paramArrayList.addAll(localArrayList2);
        }
        i = 0;
      }
    }
  }

  public final int a(String paramString, stAntiTheftReport paramstAntiTheftReport, AtomicReference<Integer> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 44);
    if (i != 0);
    while (true)
    {
      return i;
      UserInfo localUserInfo = this.c.getUserInfo();
      String str = localUserInfo.qq;
      localUserInfo.qq = paramString;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", localUserInfo);
      localUniPacket1.put("report", paramstAntiTheftReport);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i != 0)
      {
        localUserInfo.qq = str;
      }
      else
      {
        Integer localInteger = (Integer)localUniPacket2.getByClass("", Integer.valueOf(0));
        if (localInteger != null)
          paramAtomicReference.set(localInteger);
        localUserInfo.qq = str;
        i = 0;
      }
    }
  }

  public final int a(String paramString, stUrgentInfo paramstUrgentInfo, AtomicReference<Integer> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 46);
    if (i != 0);
    while (true)
    {
      return i;
      UserInfo localUserInfo = this.c.getUserInfo();
      String str = localUserInfo.qq;
      localUserInfo.qq = paramString;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", localUserInfo);
      localUniPacket1.put("urgent", paramstUrgentInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i != 0)
      {
        localUserInfo.qq = str;
      }
      else
      {
        Integer localInteger = (Integer)localUniPacket2.getByClass("", Integer.valueOf(0));
        if (localInteger != null)
          paramAtomicReference.set(localInteger);
        localUserInfo.qq = str;
        i = 0;
      }
    }
  }

  public final int a(String paramString, ArrayList<stBindPhoneInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 45);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("qq", Long.valueOf(paramString));
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new stBindPhoneInfo());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("vecBindInfos", localArrayList1);
        if (localArrayList2 != null)
          paramArrayList.addAll(localArrayList2);
        i = 0;
      }
    }
  }

  public final int a(String paramString, AtomicReference<UrlCheckResponse> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 39);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      UrlCheckRequest localUrlCheckRequest = new UrlCheckRequest();
      localUrlCheckRequest.url = paramString;
      localUniPacket1.put("checkrequest", localUrlCheckRequest);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        UrlCheckResponse localUrlCheckResponse = (UrlCheckResponse)localUniPacket2.getByClass("checkresponse", new UrlCheckResponse());
        if (localUrlCheckResponse != null)
          paramAtomicReference.set(localUrlCheckResponse);
        i = 0;
      }
    }
  }

  public final int a(String paramString, AtomicReference<SoftServerInfo> paramAtomicReference, ArrayList<Category> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 8);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("request", paramString);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        SoftServerInfo localSoftServerInfo = (SoftServerInfo)localUniPacket2.getByClass("serverinfo", new SoftServerInfo());
        if (localSoftServerInfo != null)
          paramAtomicReference.set(localSoftServerInfo);
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new Category());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("categorys", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList.clear();
          paramArrayList.addAll(localArrayList2);
        }
        i = 0;
      }
    }
  }

  public final int a(ArrayList<CommentInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 2);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("usercommentinfo", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int a(ArrayList<ConfInfo> paramArrayList, ArrayList<ConfSrc> paramArrayList1, AtomicReference<TipInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 24);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("machineinfo", this.c.getMachineInfo());
      localUniPacket1.put("vecinfo", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new ConfSrc());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("vecsrc", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList1.clear();
          paramArrayList1.addAll(localArrayList2);
        }
        if (paramAtomicReference != null)
          paramAtomicReference.set((TipInfo)localUniPacket2.getByClass("tipinfo", new TipInfo()));
        i = 0;
      }
    }
  }

  public final int a(List<SmsReport> paramList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 28);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getSPhoneType());
      localUniPacket1.put("userinfo", this.c.getSUserInfo());
      localUniPacket1.put("vecSmsReport", paramList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int a(List<SoftFeature> paramList, ArrayList<AnalyseInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 11);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecSoftFeature", paramList);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new AnalyseInfo());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("vecAnalyseInfo", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList.clear();
          paramArrayList.addAll(localArrayList2);
        }
        i = 0;
      }
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
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
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

  public final int a(List<SoftKey> paramList, AtomicReference<SoftServerInfo> paramAtomicReference, ArrayList<MySoftSimpleInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 10);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecsoftkey", paramList);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        SoftServerInfo localSoftServerInfo = (SoftServerInfo)localUniPacket2.getByClass("serverinfo", new SoftServerInfo());
        if (localSoftServerInfo != null)
          paramAtomicReference.set(localSoftServerInfo);
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new MySoftSimpleInfo());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("softs", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList.clear();
          paramArrayList.addAll(localArrayList2);
        }
        i = 0;
      }
    }
  }

  public final int a(Map<SoftKey, MalSoftType> paramMap)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 1);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("malsofttype", paramMap);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int a(AtomicReference<ServerInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 16);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ServerInfo localServerInfo = (ServerInfo)localUniPacket2.getByClass("serverinfo", new ServerInfo());
        if (localServerInfo != null)
          paramAtomicReference.set(localServerInfo);
        i = 0;
      }
    }
  }

  public final int b()
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 6);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int b(PhoneInfo paramPhoneInfo, AtomicReference<ResPKPosition> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 47);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("phoneinfo", paramPhoneInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ResPKPosition localResPKPosition = (ResPKPosition)localUniPacket2.getByClass("respkposition", new ResPKPosition());
        if (localResPKPosition != null)
          paramAtomicReference.set(localResPKPosition);
        i = 0;
      }
    }
  }

  public final int b(STQuery paramSTQuery, AtomicReference<STVecCodeResult> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 37);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("queryParam", paramSTQuery);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        STVecCodeResult localSTVecCodeResult = (STVecCodeResult)localUniPacket2.getByClass("vec_Code", new STVecCodeResult());
        if (localSTVecCodeResult != null)
          paramAtomicReference.set(localSTVecCodeResult);
        i = 0;
      }
    }
  }

  public final int b(String paramString, AtomicReference<SoftServerInfo> paramAtomicReference, ArrayList<SoftSimpleInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 9);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("request", paramString);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        SoftServerInfo localSoftServerInfo = (SoftServerInfo)localUniPacket2.getByClass("serverinfo", new SoftServerInfo());
        if (localSoftServerInfo != null)
          paramAtomicReference.set(localSoftServerInfo);
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new SoftSimpleInfo());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("softs", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList.clear();
          paramArrayList.addAll(localArrayList2);
        }
        i = 0;
      }
    }
  }

  public final int b(ArrayList<UnknownSoftInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 3);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecunknownsoftinfo", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int b(ArrayList<ConfInfo> paramArrayList, ArrayList<ConfSrc> paramArrayList1, AtomicReference<TipInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 25);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecinfo", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new ConfSrc());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("vecsrc", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList1.clear();
          paramArrayList1.addAll(localArrayList2);
        }
        if (paramAtomicReference != null)
          paramAtomicReference.set((TipInfo)localUniPacket2.getByClass("tipinfo", new TipInfo()));
        i = 0;
      }
    }
  }

  public final int b(List<TelReport> paramList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 29);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getSPhoneType());
      localUniPacket1.put("userinfo", this.c.getSUserInfo());
      localUniPacket1.put("vecTelReport", paramList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int b(List<String> paramList, AtomicReference<RspTemplate> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 40);
    if (i != 0)
      return i;
    localUniPacket1.put("phonetype", this.c.getPhoneType());
    localUniPacket1.put("userinfo", this.c.getUserInfo());
    int j = paramList.size();
    ArrayList localArrayList = new ArrayList(j);
    for (int k = 0; ; k++)
    {
      if (k >= j)
      {
        localUniPacket1.put("reqtemp", new RequestTemplate(localArrayList));
        i = a(localUniPacket1, localUniPacket2, false);
        if (i != 0)
          break;
        RspTemplate localRspTemplate = (RspTemplate)localUniPacket2.getByClass("rsptemp", new RspTemplate());
        if (localRspTemplate != null)
          paramAtomicReference.set(localRspTemplate);
        i = 0;
        break;
      }
      localArrayList.add(new UrlCheckRequest((String)paramList.get(k), null, 0));
    }
  }

  public final int c(PhoneInfo paramPhoneInfo, AtomicReference<PKUserInfo> paramAtomicReference)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 48);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("phoneinfo", paramPhoneInfo);
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        PKUserInfo localPKUserInfo = (PKUserInfo)localUniPacket2.getByClass("pkuserinfo", new PKUserInfo());
        if (localPKUserInfo != null)
          paramAtomicReference.set(localPKUserInfo);
        i = 0;
      }
    }
  }

  public final int c(ArrayList<FBIllegaSoft> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 4);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecillsoft", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int c(List<SoftFeature> paramList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 30);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getSPhoneType());
      localUniPacket1.put("userinfo", this.c.getSUserInfo());
      localUniPacket1.put("vecSoftFeature", paramList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int d(ArrayList<FBSoftDesc> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 15);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecsoftdesc", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int d(List<SoftAction> paramList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 20);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecsoftaction", paramList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int e(ArrayList<ADInfo> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 17);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      i = a(localUniPacket1, localUniPacket2, false);
      if (i == 0)
      {
        ArrayList localArrayList1 = new ArrayList();
        localArrayList1.add(new ADInfo());
        ArrayList localArrayList2 = (ArrayList)localUniPacket2.getByClass("ads", localArrayList1);
        if (localArrayList2 != null)
        {
          paramArrayList.clear();
          paramArrayList.addAll(localArrayList2);
        }
        i = 0;
      }
    }
  }

  public final int e(List<NotifyInfo> paramList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 21);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("phonetype", this.c.getPhoneType());
      localUniPacket1.put("userinfo", this.c.getUserInfo());
      localUniPacket1.put("vecnotifyinfo", paramList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int f(ArrayList<FBMobile> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 26);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("machineinfo", this.c.getMachineInfo());
      localUniPacket1.put("vecfb", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int g(ArrayList<FBWBList> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 27);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("machineinfo", this.c.getMachineInfo());
      localUniPacket1.put("vecwblist", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final int h(ArrayList<SUI> paramArrayList)
  {
    UniPacket localUniPacket1 = new UniPacket(true);
    UniPacket localUniPacket2 = new UniPacket(true);
    int i = a(localUniPacket1, localUniPacket2, 31);
    if (i != 0);
    while (true)
    {
      return i;
      localUniPacket1.put("suikey", this.c.getSUIKey());
      localUniPacket1.put("vecsui", paramArrayList);
      i = a(localUniPacket1, localUniPacket2, true);
      if (i == 0)
        i = 0;
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.b = paramContext;
    this.c = new WupConfig(paramContext);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzf
 * JD-Core Version:    0.6.2
 */