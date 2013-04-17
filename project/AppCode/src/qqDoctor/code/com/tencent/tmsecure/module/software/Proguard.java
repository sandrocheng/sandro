package com.tencent.tmsecure.module.software;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    localSoftwareManager.isPackageInstalled(null);
    localSoftwareManager.getAppVersionStatus(null, 0);
    localSoftwareManager.getInstalledApp(0, 0);
    localSoftwareManager.getAppInfo(new String(), 0);
    localSoftwareManager.getAppInfo(new AppEntity(), 0);
    localSoftwareManager.installApp(null, null, 0);
    localSoftwareManager.installApp(null);
    localSoftwareManager.installAppSilently(null);
    localSoftwareManager.uninstallApp(null, null, 0);
    localSoftwareManager.uninstallAppSilently(null);
    localSoftwareManager.getAppsCanMovable(0, 0, false);
    localSoftwareManager.startUpApp(null);
    localSoftwareManager.goToInstalledAppDetails(null);
    localSoftwareManager.getApkList(null, null, false, 0);
    localSoftwareManager.getApkListFromSDCard(null, false, 0);
    localSoftwareManager.getApkInfo(new AppEntity(), 0);
    localSoftwareManager.getApkInfo(new String(), 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.software.Proguard
 * JD-Core Version:    0.6.2
 */