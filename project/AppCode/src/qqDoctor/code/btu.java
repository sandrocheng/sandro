import QQPIM.SoftElementInfo;
import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class btu extends BaseManager
{
  public HashMap<String, SoftList> a = new HashMap(1);
  public SoftwareManager b;
  private IUpdateObserver c = new btv(this);

  public static String a(SoftListType paramSoftListType)
  {
    String str;
    switch (paramSoftListType.value())
    {
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 25:
    default:
      str = "";
    case 0:
    case 4:
    case 1:
    case 2:
    case 3:
    case 5:
    case 17:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    }
    while (true)
    {
      return str;
      str = UpdateConfig.WHITELIST_COMMON_NAME;
      continue;
      str = UpdateConfig.ROM_THIRDPART_NAME;
      continue;
      str = UpdateConfig.WHITELIST_UNUSUAL_NAME;
      continue;
      str = UpdateConfig.BLACKLIST_ROM_NAME;
      continue;
      str = UpdateConfig.BLACKLIST_WITHPLUGIN_NAME;
      continue;
      str = UpdateConfig.WHITELIST_ROM_NAME;
      continue;
      str = UpdateConfig.PRIVACYLOCKLIST_USUAL_NAME;
      continue;
      str = UpdateConfig.BLACKLIST_KILL_PROCESS_NAME;
      continue;
      str = UpdateConfig.WHITELIST_KILL_PROCESS_NAME;
      continue;
      str = UpdateConfig.WHITELIST_AUTO_BOOT_NAME;
      continue;
      str = UpdateConfig.WHITELIST_PERMISSION_CONTROL_NAME;
      continue;
      str = UpdateConfig.CAMERA_SOFTWARE_LIST_NAME;
      continue;
      str = UpdateConfig.DEEPCLEAN_SOFTWARE_LIST_NAME;
      continue;
      str = UpdateConfig.DEEPCLEAN_SOFT_PATH_LIST_NAME;
      continue;
      str = UpdateConfig.PERMIS_MONITOR_LIST_NAME;
      continue;
      str = UpdateConfig.NOTKILL_LIST_KILL_PROCESSES_NAME;
    }
  }

  // ERROR //
  public static SoftList b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ifnull +14 -> 17
    //   6: aload_1
    //   7: invokevirtual 116	java/lang/String:length	()I
    //   10: istore_3
    //   11: aconst_null
    //   12: astore_2
    //   13: iload_3
    //   14: ifne +5 -> 19
    //   17: aload_2
    //   18: areturn
    //   19: invokestatic 122	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   22: aload_1
    //   23: aconst_null
    //   24: invokestatic 127	btd:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   27: astore 4
    //   29: aconst_null
    //   30: astore_2
    //   31: aload 4
    //   33: ifnull -16 -> 17
    //   36: aload 4
    //   38: invokevirtual 116	java/lang/String:length	()I
    //   41: istore 5
    //   43: aconst_null
    //   44: astore_2
    //   45: iload 5
    //   47: ifeq -30 -> 17
    //   50: new 129	java/io/File
    //   53: dup
    //   54: aload 4
    //   56: invokespecial 132	java/io/File:<init>	(Ljava/lang/String;)V
    //   59: astore 6
    //   61: aload 6
    //   63: invokevirtual 136	java/io/File:exists	()Z
    //   66: istore 7
    //   68: aconst_null
    //   69: astore_2
    //   70: iload 7
    //   72: ifeq -55 -> 17
    //   75: new 138	java/io/FileInputStream
    //   78: dup
    //   79: aload 6
    //   81: invokespecial 141	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   84: astore 8
    //   86: aload 8
    //   88: invokestatic 146	m:a	(Ljava/io/InputStream;)Lbtc;
    //   91: astore 14
    //   93: aload 8
    //   95: invokevirtual 149	java/io/FileInputStream:available	()I
    //   98: newarray byte
    //   100: astore 15
    //   102: aload 8
    //   104: aload 15
    //   106: invokevirtual 153	java/io/FileInputStream:read	([B)I
    //   109: pop
    //   110: aload 15
    //   112: invokestatic 158	btk:a	([B)[B
    //   115: invokestatic 163	a:d	([B)Ljava/lang/String;
    //   118: aload 14
    //   120: getfield 168	btc:b	[B
    //   123: invokestatic 163	a:d	([B)Ljava/lang/String;
    //   126: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   129: istore 17
    //   131: iload 17
    //   133: ifne +25 -> 158
    //   136: aload 8
    //   138: invokevirtual 174	java/io/FileInputStream:close	()V
    //   141: aconst_null
    //   142: astore_2
    //   143: goto -126 -> 17
    //   146: astore 21
    //   148: aload 21
    //   150: invokevirtual 177	java/io/IOException:printStackTrace	()V
    //   153: aconst_null
    //   154: astore_2
    //   155: goto -138 -> 17
    //   158: invokestatic 122	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   161: aload 15
    //   163: aconst_null
    //   164: invokestatic 183	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   167: astore 18
    //   169: new 185	com/qq/jce/wup/UniAttribute
    //   172: dup
    //   173: invokespecial 186	com/qq/jce/wup/UniAttribute:<init>	()V
    //   176: astore 19
    //   178: aload 19
    //   180: aload 18
    //   182: invokevirtual 190	com/qq/jce/wup/UniAttribute:decode	([B)V
    //   185: aload 19
    //   187: aload_0
    //   188: new 192	QQPIM/SoftList
    //   191: dup
    //   192: invokespecial 193	QQPIM/SoftList:<init>	()V
    //   195: invokevirtual 197	com/qq/jce/wup/UniAttribute:get	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   198: checkcast 192	QQPIM/SoftList
    //   201: astore 12
    //   203: aload 8
    //   205: invokevirtual 174	java/io/FileInputStream:close	()V
    //   208: aload 12
    //   210: astore_2
    //   211: goto -194 -> 17
    //   214: astore 9
    //   216: aconst_null
    //   217: astore 8
    //   219: aload 9
    //   221: invokevirtual 198	java/lang/Exception:printStackTrace	()V
    //   224: aload 8
    //   226: ifnull +75 -> 301
    //   229: aload 8
    //   231: invokevirtual 174	java/io/FileInputStream:close	()V
    //   234: aconst_null
    //   235: astore 12
    //   237: goto -29 -> 208
    //   240: astore 13
    //   242: aload 13
    //   244: invokevirtual 177	java/io/IOException:printStackTrace	()V
    //   247: aconst_null
    //   248: astore 12
    //   250: goto -42 -> 208
    //   253: astore 10
    //   255: aconst_null
    //   256: astore 8
    //   258: aload 8
    //   260: ifnull +8 -> 268
    //   263: aload 8
    //   265: invokevirtual 174	java/io/FileInputStream:close	()V
    //   268: aload 10
    //   270: athrow
    //   271: astore 11
    //   273: aload 11
    //   275: invokevirtual 177	java/io/IOException:printStackTrace	()V
    //   278: goto -10 -> 268
    //   281: astore 20
    //   283: aload 20
    //   285: invokevirtual 177	java/io/IOException:printStackTrace	()V
    //   288: goto -80 -> 208
    //   291: astore 10
    //   293: goto -35 -> 258
    //   296: astore 9
    //   298: goto -79 -> 219
    //   301: aconst_null
    //   302: astore 12
    //   304: goto -96 -> 208
    //
    // Exception table:
    //   from	to	target	type
    //   136	141	146	java/io/IOException
    //   75	86	214	java/lang/Exception
    //   229	234	240	java/io/IOException
    //   75	86	253	finally
    //   263	268	271	java/io/IOException
    //   203	208	281	java/io/IOException
    //   86	131	291	finally
    //   158	203	291	finally
    //   219	224	291	finally
    //   86	131	296	java/lang/Exception
    //   158	203	296	java/lang/Exception
  }

  public final boolean a(String paramString, SoftList paramSoftList)
  {
    Iterator localIterator = paramSoftList.vctSofts.iterator();
    SoftElementInfo localSoftElementInfo;
    label20: boolean bool;
    if (!localIterator.hasNext())
    {
      localSoftElementInfo = null;
      if (localSoftElementInfo != null)
        break label81;
      bool = false;
    }
    while (true)
    {
      return bool;
      localSoftElementInfo = (SoftElementInfo)localIterator.next();
      if (localSoftElementInfo.pkgname.equals(paramString))
        break label20;
      if ((localSoftElementInfo.pkgname.length() != 0) || (!a(paramString, localSoftElementInfo.cert)))
        break;
      break label20;
      label81: if ((localSoftElementInfo.cert.length() == 0) || (localSoftElementInfo.pkgname.length() == 0))
        bool = true;
      else
        bool = a(paramString, localSoftElementInfo.cert);
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    AppEntity localAppEntity = this.b.getAppInfo(paramString1, 16);
    if ((localAppEntity != null) && (localAppEntity.get("signatureCermMD5") != null) && (localAppEntity.get("signatureCermMD5").equals(paramString2)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final void finalize()
    throws Throwable
  {
    ((UpdateManager)ManagerCreator.getManager(UpdateManager.class)).removeObserver(10485696);
    super.finalize();
  }

  public final int getSingletonType()
  {
    return 0;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    ((UpdateManager)ManagerCreator.getManager(UpdateManager.class)).addObserver(10485696, this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btu
 * JD-Core Version:    0.6.2
 */