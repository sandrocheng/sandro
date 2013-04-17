import QQPIM.AnalyseInfo;
import QQPIM.CloudCheck;
import QQPIM.FeatureKey;
import QQPIM.SoftActionConfig;
import QQPIM.SoftFeature;
import QQPIM.UploadFileInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Parcelable;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.AmScanner;
import com.tencent.tmsecure.module.qscanner.ApkKey;
import com.tencent.tmsecure.module.qscanner.CertChecker;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResult;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bym extends BaseManager
{
  public CertChecker a;
  public boolean b = false;
  public Object c = new Object();
  public boolean d = false;
  public Object e = new Object();
  private Context f;
  private SoftwareManager g;
  private AmScanner h;
  private byk i;
  private byte[] j = new byte[0];
  private boolean k;
  private boolean l = false;
  private String[] m = { "image", "icon", "photo", "music", "dcim", "weibo" };

  private void a(QScanListener paramQScanListener)
  {
    synchronized (this.c)
    {
      try
      {
        if (this.b)
        {
          if (paramQScanListener != null)
            paramQScanListener.onScanPaused();
          this.c.wait();
          if (paramQScanListener != null)
            paramQScanListener.onScanContinue();
          this.b = false;
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.getMessage();
      }
    }
  }

  private void a(QScanListener paramQScanListener, ArrayList<QScanResultEntity> paramArrayList)
  {
    synchronized (this.c)
    {
      this.b = false;
    }
    synchronized (this.e)
    {
      this.d = false;
      this.l = false;
      if (paramQScanListener != null)
        paramQScanListener.onScanFinished(paramArrayList);
      return;
      localObject2 = finally;
      throw localObject2;
    }
  }

  private void a(ArrayList<QScanResultEntity> paramArrayList, ArrayList<AnalyseInfo> paramArrayList1)
  {
    Iterator localIterator1 = paramArrayList.iterator();
    while (true)
    {
      if (!localIterator1.hasNext())
        return;
      QScanResultEntity localQScanResultEntity = (QScanResultEntity)localIterator1.next();
      Iterator localIterator2 = paramArrayList1.iterator();
      while (localIterator2.hasNext())
      {
        AnalyseInfo localAnalyseInfo = (AnalyseInfo)localIterator2.next();
        if ((localQScanResultEntity.packageName.equals(localAnalyseInfo.featureKey.uniCode)) && (localQScanResultEntity.size == localAnalyseInfo.featureKey.fileSize) && (localAnalyseInfo.cloudCheck.safeType != 0))
        {
          localQScanResultEntity.type = localAnalyseInfo.cloudCheck.safeType;
          localQScanResultEntity.advice = localAnalyseInfo.cloudCheck.handleAdvice;
          localQScanResultEntity.name = localAnalyseInfo.cloudCheck.virusName;
          localQScanResultEntity.discription = localAnalyseInfo.cloudCheck.short_desc;
          localQScanResultEntity.malwareid = localAnalyseInfo.cloudCheck.virusID;
          localQScanResultEntity.url = localAnalyseInfo.cloudCheck.handleUrl;
          byk localbyk = this.i;
          String str = localQScanResultEntity.packageName;
          int n = localQScanResultEntity.size;
          if (str != null)
          {
            localbyk.a.putParcelable(str + n, localQScanResultEntity);
            localbyk.b = true;
          }
        }
      }
    }
  }

  private void a(ArrayList<QScanResultEntity> paramArrayList, List<AnalyseInfo> paramList)
  {
    Iterator localIterator1 = paramList.iterator();
    while (true)
    {
      if (!localIterator1.hasNext())
        return;
      AnalyseInfo localAnalyseInfo = (AnalyseInfo)localIterator1.next();
      UploadFileInfo localUploadFileInfo = localAnalyseInfo.getUploadFileInfo();
      if ((localUploadFileInfo != null) && (localUploadFileInfo.getVecUploadFile() != null) && (localUploadFileInfo.getVecUploadFile().size() > 0))
      {
        Iterator localIterator2 = paramArrayList.iterator();
        while (localIterator2.hasNext())
        {
          QScanResultEntity localQScanResultEntity = (QScanResultEntity)localIterator2.next();
          if ((localQScanResultEntity.packageName.equals(localAnalyseInfo.featureKey.uniCode)) && (localQScanResultEntity.size == localAnalyseInfo.featureKey.fileSize))
          {
            bti localbti = new bti(this.f);
            localbti.a = "http://uploadserver.3g.qq.com";
            localbti.a(localQScanResultEntity.path, localUploadFileInfo);
          }
        }
      }
    }
  }

  private void a(List<AnalyseInfo> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (localArrayList.size() > 0)
          btd.a(this.f, localArrayList, "label_sa_cfg", "sa_cfg.dat");
        return;
      }
      AnalyseInfo localAnalyseInfo = (AnalyseInfo)localIterator.next();
      if (localAnalyseInfo.getActionLevel() != 0)
        localArrayList.add(new SoftActionConfig(localAnalyseInfo.featureKey, localAnalyseInfo.actionLevel));
    }
  }

  private ArrayList<QScanResultEntity> b(ArrayList<AppEntity> paramArrayList, QScanListener paramQScanListener)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2;
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
    {
      localArrayList2 = localArrayList1;
      return localArrayList2;
    }
    int n = 0;
    while (true)
    {
      if (n >= paramArrayList.size())
      {
        localArrayList2 = localArrayList1;
        break;
      }
      a(paramQScanListener);
      if (b(paramQScanListener))
      {
        localArrayList2 = localArrayList1;
        break;
      }
      long l1 = System.currentTimeMillis();
      AppEntity localAppEntity1 = (AppEntity)paramArrayList.get(n);
      AppEntity localAppEntity2;
      label99: int i1;
      label115: String str2;
      QScanResultEntity localQScanResultEntity1;
      Object localObject1;
      label193: AppEntity localAppEntity3;
      label210: ApkKey localApkKey;
      label223: QScanResult localQScanResult2;
      label250: Object localObject2;
      label258: String str3;
      label273: long l4;
      if (localAppEntity1.isApk())
      {
        localAppEntity2 = this.g.getApkInfo(localAppEntity1, 9);
        if (localAppEntity2 != null)
        {
          if (!localAppEntity2.isApk())
            break label440;
          i1 = 2;
          byk localbyk1 = this.i;
          String str1 = localAppEntity2.getPackageName();
          str2 = localAppEntity2.getApkPath();
          long l2 = localAppEntity2.getSize();
          if (str1 == null)
            break label621;
          localQScanResultEntity1 = (QScanResultEntity)localbyk1.a.getParcelable(str1 + l2);
          if ((str2 != null) && (localQScanResultEntity1 != null))
            break label461;
          localObject1 = null;
          if (localObject1 == null)
          {
            if (!localAppEntity2.isApk())
              break label627;
            localAppEntity3 = localAppEntity2;
            if (localAppEntity3 != null)
            {
              if (localAppEntity3 != null)
                break label643;
              localApkKey = null;
              QScanResult localQScanResult1 = this.h.scanApk(localApkKey);
              if (localQScanResult1 == null)
                break label708;
              localQScanResult2 = this.a.checkCert(localQScanResult1);
              if (localQScanResult2 != null)
                break label714;
              localObject2 = null;
              if (localQScanResult2 == null)
                break label900;
              str3 = localQScanResult2.getApkkey().getCertMd5();
              localApkKey.certMd5 = str3;
              byk localbyk2 = this.i;
              if (localApkKey != null)
              {
                localbyk2.a.putParcelable(localApkKey.pkgName + localApkKey.size, (Parcelable)localObject2);
                localbyk2.b = true;
              }
              localObject1 = localObject2;
            }
          }
          else
          {
            if (localObject1 != null)
            {
              localArrayList1.add(localObject1);
              if (paramQScanListener != null)
              {
                if ((localObject1.apkType != 0) && (localObject1.apkType != 1))
                  break label906;
                paramQScanListener.onPackageScanProgress(100 * (n + 1) / paramArrayList.size(), localObject1);
              }
            }
            label388: long l3 = System.currentTimeMillis() - l1;
            if (l3 < 20L)
              l4 = 20L - l3;
          }
        }
      }
      try
      {
        Thread.sleep(l4);
        n++;
        continue;
        localAppEntity2 = this.g.getAppInfo(localAppEntity1, 73);
        break label99;
        label440: boolean bool = localAppEntity2.isSystemApp();
        i1 = 0;
        if (!bool)
          break label115;
        i1 = 1;
        break label115;
        label461: QScanResultEntity localQScanResultEntity2 = new QScanResultEntity();
        localQScanResultEntity2.packageName = localQScanResultEntity1.packageName;
        localQScanResultEntity2.softName = localQScanResultEntity1.softName;
        localQScanResultEntity2.version = localQScanResultEntity1.version;
        localQScanResultEntity2.versionCode = localQScanResultEntity1.versionCode;
        localQScanResultEntity2.certMd5 = localQScanResultEntity1.certMd5;
        localQScanResultEntity2.size = localQScanResultEntity1.size;
        localQScanResultEntity2.apkType = i1;
        localQScanResultEntity2.path = str2;
        localQScanResultEntity2.type = localQScanResultEntity1.type;
        localQScanResultEntity2.advice = localQScanResultEntity1.advice;
        localQScanResultEntity2.malwareid = localQScanResultEntity1.malwareid;
        localQScanResultEntity2.name = localQScanResultEntity1.name;
        localQScanResultEntity2.label = localQScanResultEntity1.name;
        localQScanResultEntity2.discription = localQScanResultEntity1.discription;
        localQScanResultEntity2.url = localQScanResultEntity1.url;
        localObject1 = localQScanResultEntity2;
        break label193;
        label621: localObject1 = null;
        break label193;
        label627: localAppEntity3 = this.g.getAppInfo(localAppEntity2, 16);
        break label210;
        label643: localApkKey = new ApkKey(StringUtil.assertNotNullString(localAppEntity3.getPackageName()), StringUtil.assertNotNullString(localAppEntity3.getAppName()), StringUtil.assertNotNullString(localAppEntity3.getCertMD5()), StringUtil.assertNotNullString(localAppEntity3.getVersion()), localAppEntity3.getVersionCode(), (int)localAppEntity3.getSize(), StringUtil.assertNotNullString(localAppEntity3.getApkPath()), i1);
        break label223;
        label708: localQScanResult2 = null;
        break label250;
        label714: localObject2 = new QScanResultEntity();
        ((QScanResultEntity)localObject2).packageName = localQScanResult2.apkkey.getPkgName();
        ((QScanResultEntity)localObject2).softName = localQScanResult2.apkkey.getSoftName();
        ((QScanResultEntity)localObject2).version = localQScanResult2.apkkey.getVersion();
        ((QScanResultEntity)localObject2).versionCode = localQScanResult2.apkkey.getVersionCode();
        ((QScanResultEntity)localObject2).path = localQScanResult2.apkkey.path;
        ((QScanResultEntity)localObject2).apkType = localQScanResult2.apkkey.apkType;
        ((QScanResultEntity)localObject2).certMd5 = localQScanResult2.apkkey.certMd5;
        ((QScanResultEntity)localObject2).size = localQScanResult2.apkkey.size;
        ((QScanResultEntity)localObject2).type = localQScanResult2.type;
        ((QScanResultEntity)localObject2).advice = localQScanResult2.advice;
        ((QScanResultEntity)localObject2).malwareid = localQScanResult2.malwareid;
        ((QScanResultEntity)localObject2).name = localQScanResult2.name;
        ((QScanResultEntity)localObject2).label = localQScanResult2.label;
        ((QScanResultEntity)localObject2).discription = localQScanResult2.discription;
        ((QScanResultEntity)localObject2).url = localQScanResult2.url;
        break label258;
        label900: str3 = null;
        break label273;
        label906: if (localObject1.apkType != 2)
          break label388;
        paramQScanListener.onSdcardScanProgress(100 * (n + 1) / paramArrayList.size(), localObject1);
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  private boolean b(QScanListener paramQScanListener)
  {
    boolean bool = true;
    synchronized (this.e)
    {
      if (this.d)
      {
        if ((paramQScanListener != null) && (!this.l))
        {
          paramQScanListener.onScanCanceled();
          this.l = true;
        }
        return bool;
      }
      bool = false;
    }
  }

  private ArrayList<QScanResultEntity> c(ArrayList<QScanResultEntity> paramArrayList, QScanListener paramQScanListener)
  {
    a(paramQScanListener);
    if (b(paramQScanListener));
    while (true)
    {
      return paramArrayList;
      if (!bsv.a().b())
        throw new RuntimeException("TMS licence expired! Please contact TMS(Tencent Mobile Secure) group.");
      if (paramQScanListener != null)
        paramQScanListener.onCloudScan();
      a(paramQScanListener);
      if (!b(paramQScanListener))
      {
        ArrayList localArrayList1 = new ArrayList();
        Iterator localIterator = paramArrayList.iterator();
        int n;
        QScanResultEntity localQScanResultEntity;
        Object localObject;
        while (true)
        {
          if (!localIterator.hasNext())
          {
            ArrayList localArrayList2 = new ArrayList();
            n = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getAnalyseInfo(localArrayList1, localArrayList2);
            a(paramQScanListener);
            if (b(paramQScanListener))
              break;
            if (n != 0)
              break label318;
            a(paramArrayList, localArrayList2);
            a(paramArrayList, localArrayList2);
            byj.a(this.f.getApplicationContext()).a();
            a(localArrayList2);
            break;
          }
          localQScanResultEntity = (QScanResultEntity)localIterator.next();
          if (localQScanResultEntity != null)
            break label193;
          localObject = null;
          localArrayList1.add(localObject);
        }
        label193: SoftFeature localSoftFeature = new SoftFeature();
        localSoftFeature.setFeatureKey(new FeatureKey(localQScanResultEntity.packageName, localQScanResultEntity.softName, localQScanResultEntity.version, localQScanResultEntity.versionCode, localQScanResultEntity.certMd5, localQScanResultEntity.size));
        localSoftFeature.setRequestType(1);
        if (localQScanResultEntity.apkType == 1);
        for (boolean bool = true; ; bool = false)
        {
          localSoftFeature.setIsBuildIn(bool);
          localSoftFeature.setEngineVersion(2);
          localSoftFeature.setLocalSafeType(localQScanResultEntity.type);
          localSoftFeature.setLocalVirusID(localQScanResultEntity.malwareid);
          localSoftFeature.setLocalVirusName(localQScanResultEntity.name);
          localObject = localSoftFeature;
          break;
        }
        label318: if (paramQScanListener != null)
          paramQScanListener.onCloudScanError(n);
      }
    }
  }

  // ERROR //
  public final ArrayList<QScanResultEntity> a(ArrayList<QScanResultEntity> paramArrayList, QScanListener paramQScanListener)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: ifnull +7 -> 10
    //   6: aload_2
    //   7: invokevirtual 509	com/tencent/tmsecure/module/qscanner/QScanListener:onScanStarted	()V
    //   10: aload_0
    //   11: invokevirtual 511	bym:a	()V
    //   14: aload_0
    //   15: getfield 32	bym:j	[B
    //   18: astore 4
    //   20: aload 4
    //   22: monitorenter
    //   23: aload_0
    //   24: iconst_1
    //   25: putfield 513	bym:k	Z
    //   28: aload 4
    //   30: monitorexit
    //   31: aload_0
    //   32: aload_1
    //   33: aload_2
    //   34: invokespecial 515	bym:c	(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    //   37: astore 6
    //   39: aload_0
    //   40: aload_2
    //   41: aload 6
    //   43: invokespecial 517	bym:a	(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V
    //   46: aload_0
    //   47: invokevirtual 519	bym:b	()V
    //   50: aload_0
    //   51: getfield 32	bym:j	[B
    //   54: astore 7
    //   56: aload 7
    //   58: monitorenter
    //   59: aload_0
    //   60: iconst_0
    //   61: putfield 513	bym:k	Z
    //   64: aload 7
    //   66: monitorexit
    //   67: aload_0
    //   68: monitorexit
    //   69: aload 6
    //   71: areturn
    //   72: astore 5
    //   74: aload 4
    //   76: monitorexit
    //   77: aload 5
    //   79: athrow
    //   80: astore_3
    //   81: aload_0
    //   82: monitorexit
    //   83: aload_3
    //   84: athrow
    //   85: astore 8
    //   87: aload 7
    //   89: monitorexit
    //   90: aload 8
    //   92: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   23	31	72	finally
    //   6	23	80	finally
    //   31	59	80	finally
    //   74	80	80	finally
    //   87	93	80	finally
    //   59	67	85	finally
  }

  // ERROR //
  public final ArrayList<QScanResultEntity> a(ArrayList<AppEntity> paramArrayList, QScanListener paramQScanListener, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: ifnull +7 -> 10
    //   6: aload_2
    //   7: invokevirtual 509	com/tencent/tmsecure/module/qscanner/QScanListener:onScanStarted	()V
    //   10: aload_0
    //   11: invokevirtual 511	bym:a	()V
    //   14: aload_0
    //   15: getfield 32	bym:j	[B
    //   18: astore 5
    //   20: aload 5
    //   22: monitorenter
    //   23: aload_0
    //   24: iconst_1
    //   25: putfield 513	bym:k	Z
    //   28: aload 5
    //   30: monitorexit
    //   31: aload_0
    //   32: aload_1
    //   33: aload_2
    //   34: invokespecial 522	bym:b	(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    //   37: astore 7
    //   39: iload_3
    //   40: ifeq +12 -> 52
    //   43: aload_0
    //   44: aload 7
    //   46: aload_2
    //   47: invokespecial 515	bym:c	(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    //   50: astore 7
    //   52: aload_0
    //   53: aload_2
    //   54: aload 7
    //   56: invokespecial 517	bym:a	(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V
    //   59: aload_0
    //   60: invokevirtual 519	bym:b	()V
    //   63: aload_0
    //   64: getfield 32	bym:j	[B
    //   67: astore 8
    //   69: aload 8
    //   71: monitorenter
    //   72: aload_0
    //   73: iconst_0
    //   74: putfield 513	bym:k	Z
    //   77: aload 8
    //   79: monitorexit
    //   80: aload_0
    //   81: monitorexit
    //   82: aload 7
    //   84: areturn
    //   85: astore 6
    //   87: aload 5
    //   89: monitorexit
    //   90: aload 6
    //   92: athrow
    //   93: astore 4
    //   95: aload_0
    //   96: monitorexit
    //   97: aload 4
    //   99: athrow
    //   100: astore 9
    //   102: aload 8
    //   104: monitorexit
    //   105: aload 9
    //   107: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   23	31	85	finally
    //   6	23	93	finally
    //   31	72	93	finally
    //   87	93	93	finally
    //   102	108	93	finally
    //   72	80	100	finally
  }

  public final ArrayList<QScanResultEntity> a(List<String> paramList, QScanListener paramQScanListener, boolean paramBoolean)
  {
    ArrayList localArrayList1;
    if ((paramList == null) || (paramList.size() == 0))
    {
      localArrayList1 = new ArrayList();
      return localArrayList1;
    }
    ArrayList localArrayList2 = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localArrayList1 = a(localArrayList2, paramQScanListener, paramBoolean);
        break;
      }
      String str = (String)localIterator.next();
      AppEntity localAppEntity = new AppEntity();
      localAppEntity.setPackageName(str);
      localArrayList2.add(localAppEntity);
    }
  }

  public final void a()
  {
    if (this.i == null)
      this.i = byk.a();
    if (this.h == null)
    {
      String str = btd.a(this.f, "qv_base.amf", null);
      this.h = new AmScanner(this.f, str);
    }
    if (this.a == null)
      this.a = new CertChecker(this.f);
  }

  public final ArrayList<QScanResultEntity> b(List<String> paramList, QScanListener paramQScanListener, boolean paramBoolean)
  {
    ArrayList localArrayList1;
    if ((paramList == null) || (paramList.size() == 0))
    {
      localArrayList1 = new ArrayList();
      return localArrayList1;
    }
    ArrayList localArrayList2 = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localArrayList1 = a(localArrayList2, paramQScanListener, paramBoolean);
        break;
      }
      String str = (String)localIterator.next();
      AppEntity localAppEntity = new AppEntity();
      localAppEntity.setApkFlag(true);
      localAppEntity.setApkPath(str);
      localArrayList2.add(localAppEntity);
    }
  }

  public final void b()
  {
    synchronized (this.j)
    {
      if (this.k);
      do
      {
        return;
        byk.b();
        this.i = null;
      }
      while (this.h == null);
      this.h.finalize();
      this.h = null;
    }
  }

  public final ArrayList<AppEntity> c()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.f.getPackageManager().getInstalledApplications(0).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      ApplicationInfo localApplicationInfo = (ApplicationInfo)localIterator.next();
      AppEntity localAppEntity = new AppEntity();
      localAppEntity.setPackageName(localApplicationInfo.packageName);
      localArrayList.add(localAppEntity);
    }
  }

  public final ArrayList<AppEntity> d()
  {
    ArrayList localArrayList1 = btd.a(this.m);
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localArrayList1.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList2;
      String str = (String)localIterator.next();
      AppEntity localAppEntity = new AppEntity();
      localAppEntity.setApkFlag(true);
      localAppEntity.setApkPath(str);
      localArrayList2.add(localAppEntity);
    }
  }

  protected final void finalize()
  {
    b();
  }

  public final int getSingletonType()
  {
    return 2;
  }

  public final void onCreate(Context paramContext)
  {
    this.f = paramContext;
    this.g = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    btd.a(paramContext, "qv_base.amf", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bym
 * JD-Core Version:    0.6.2
 */