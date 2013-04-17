package com.tencent.tmsecure.module.qscanner;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    QScannerManager localQScannerManager = (QScannerManager)ManagerCreator.getManager(QScannerManager.class);
    localQScannerManager.scanInstalledPackages(null, false);
    localQScannerManager.scanSdcardApks(null, false);
    localQScannerManager.scanGlobal(null, false);
    localQScannerManager.scanPackages(null, null, false);
    localQScannerManager.scanApks(null, null, false);
    localQScannerManager.cancelScan();
    localQScannerManager.continueScan();
    localQScannerManager.pauseScan();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.Proguard
 * JD-Core Version:    0.6.2
 */