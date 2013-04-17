package com.tencent.tmsecure.module.qscanner;

import android.content.Context;
import btd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CertChecker
{
  private Context a;
  private List<ApkKey> b;

  public CertChecker(Context paramContext)
  {
    this.a = paramContext;
    btd.a(this.a, "trustcerts.dat", null);
    this.b = ((List)btd.b(this.a, "label_tc", "trustcerts.dat"));
    if (this.b == null)
      this.b = new ArrayList();
  }

  public QScanResult checkCert(QScanResult paramQScanResult)
  {
    Iterator localIterator = this.b.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return paramQScanResult;
      ApkKey localApkKey1 = (ApkKey)localIterator.next();
      ApkKey localApkKey2 = paramQScanResult.apkkey;
      if ((localApkKey2.pkgName.equals(localApkKey1.pkgName)) && (!localApkKey2.certMd5.equals(localApkKey1.certMd5)) && (paramQScanResult.type != 3))
      {
        paramQScanResult.type = 8;
        paramQScanResult.advice = 1;
      }
    }
  }

  public int getApkClass(String paramString)
  {
    Iterator localIterator = this.b.iterator();
    if (!localIterator.hasNext());
    for (int i = 0; ; i = 1)
    {
      return i;
      if (!((ApkKey)localIterator.next()).pkgName.equals(paramString))
        break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.CertChecker
 * JD-Core Version:    0.6.2
 */