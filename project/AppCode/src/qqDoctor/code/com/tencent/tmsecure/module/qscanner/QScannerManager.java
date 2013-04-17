package com.tencent.tmsecure.module.qscanner;

import QQPIM.VirusClientInfo;
import android.content.Context;
import btd;
import bym;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.utils.UpdateUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class QScannerManager extends BaseManager
{
  private bym a;

  public static String getVirusBaseVersion(Context paramContext)
  {
    VirusClientInfo localVirusClientInfo = UpdateUtil.getVirusClientInfo(paramContext, btd.a(paramContext, "qv_base.amf", null));
    long l = 0L;
    if (localVirusClientInfo != null)
      l = 1000L * localVirusClientInfo.getTimestamp();
    Date localDate = new Date(l);
    StringBuilder localStringBuilder = new StringBuilder(String.valueOf(new SimpleDateFormat("yyyyMMdd").format(localDate)));
    if (localDate.getHours() > 12);
    for (String str = "B"; ; str = "A")
      return str;
  }

  public final void cancelScan()
  {
    if (isExpired())
      return;
    bym localbym = this.a;
    synchronized (localbym.e)
    {
      while (true)
      {
        localbym.d = true;
        synchronized (localbym.c)
        {
          localbym.c.notifyAll();
        }
      }
    }
  }

  public final ArrayList<QScanResultEntity> cloudScan(ArrayList<QScanResultEntity> paramArrayList, QScanListener paramQScanListener)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a(paramArrayList, paramQScanListener))
      return localArrayList;
  }

  public final void continueScan()
  {
    if (isExpired());
    while (true)
    {
      return;
      bym localbym = this.a;
      synchronized (localbym.c)
      {
        localbym.c.notifyAll();
      }
    }
  }

  public final void freeScanner()
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.b();
    }
  }

  public final int getApkClass(String paramString)
  {
    boolean bool = isExpired();
    int i = 0;
    if (!bool)
    {
      bym localbym1 = this.a;
      i = 0;
      if (localbym1 != null)
        break label25;
    }
    while (true)
    {
      return i;
      label25: bym localbym2 = this.a;
      CertChecker localCertChecker = localbym2.a;
      i = 0;
      if (localCertChecker != null)
        i = localbym2.a.getApkClass(paramString);
    }
  }

  public final void initScanner()
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a();
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bym();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void pauseScan()
  {
    if (isExpired());
    while (true)
    {
      return;
      bym localbym = this.a;
      synchronized (localbym.c)
      {
        localbym.b = true;
      }
    }
  }

  public final ArrayList<QScanResultEntity> scanApks(List<String> paramList, QScanListener paramQScanListener, boolean paramBoolean)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.b(paramList, paramQScanListener, paramBoolean))
      return localArrayList;
  }

  public final ArrayList<QScanResultEntity> scanGlobal(QScanListener paramQScanListener, boolean paramBoolean)
  {
    if (isExpired());
    bym localbym;
    ArrayList localArrayList2;
    for (ArrayList localArrayList1 = new ArrayList(); ; localArrayList1 = localbym.a(localArrayList2, paramQScanListener, paramBoolean))
    {
      return localArrayList1;
      localbym = this.a;
      localArrayList2 = localbym.c();
      localArrayList2.addAll(localbym.d());
    }
  }

  public final ArrayList<QScanResultEntity> scanInstalledPackages(QScanListener paramQScanListener, boolean paramBoolean)
  {
    if (isExpired());
    bym localbym;
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = localbym.a(localbym.c(), paramQScanListener, paramBoolean))
    {
      return localArrayList;
      localbym = this.a;
    }
  }

  public final ArrayList<QScanResultEntity> scanPackages(List<String> paramList, QScanListener paramQScanListener, boolean paramBoolean)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a(paramList, paramQScanListener, paramBoolean))
      return localArrayList;
  }

  public final ArrayList<QScanResultEntity> scanSdcardApks(QScanListener paramQScanListener, boolean paramBoolean)
  {
    if (isExpired());
    bym localbym;
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = localbym.a(localbym.d(), paramQScanListener, paramBoolean))
    {
      return localArrayList;
      localbym = this.a;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.QScannerManager
 * JD-Core Version:    0.6.2
 */