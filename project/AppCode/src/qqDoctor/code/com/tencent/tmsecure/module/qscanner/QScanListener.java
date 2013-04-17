package com.tencent.tmsecure.module.qscanner;

import java.util.ArrayList;

public abstract class QScanListener
{
  public void onCloudScan()
  {
  }

  public void onCloudScanError(int paramInt)
  {
  }

  public void onPackageScanProgress(int paramInt, QScanResultEntity paramQScanResultEntity)
  {
  }

  public void onScanCanceled()
  {
  }

  public void onScanContinue()
  {
  }

  public void onScanFinished(ArrayList<QScanResultEntity> paramArrayList)
  {
  }

  public void onScanPaused()
  {
  }

  public void onScanStarted()
  {
  }

  public void onSdcardScanProgress(int paramInt, QScanResultEntity paramQScanResultEntity)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.QScanListener
 * JD-Core Version:    0.6.2
 */