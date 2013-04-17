package com.tencent.tmsecure.module.software;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import ay;
import btd;
import byn;
import byo;
import byp;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import di;
import java.io.File;
import java.util.ArrayList;

public final class SoftwareManager extends BaseManager
{
  private byp a;

  public final boolean canMoveToSdcard(String paramString, boolean paramBoolean)
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      PackageInfo localPackageInfo = this.a.a(paramString, 0);
      bool2 = false;
      if (localPackageInfo != null)
        bool2 = byn.a(localPackageInfo, paramBoolean);
    }
  }

  public final AppEntity getApkInfo(AppEntity paramAppEntity, int paramInt)
  {
    if (isExpired());
    for (AppEntity localAppEntity = new AppEntity(); ; localAppEntity = this.a.b(paramAppEntity, paramInt))
      return localAppEntity;
  }

  public final AppEntity getApkInfo(String paramString, int paramInt)
  {
    if (isExpired());
    byp localbyp;
    AppEntity localAppEntity2;
    for (AppEntity localAppEntity1 = new AppEntity(); ; localAppEntity1 = localbyp.b(localAppEntity2, paramInt))
    {
      return localAppEntity1;
      localbyp = this.a;
      localAppEntity2 = new AppEntity();
      localAppEntity2.put("apkPath", paramString);
    }
  }

  public final ArrayList<AppEntity> getApkList(File paramFile, String[] paramArrayOfString, boolean paramBoolean, int paramInt)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a(paramFile, paramArrayOfString, paramBoolean, paramInt))
      return localArrayList;
  }

  public final ArrayList<AppEntity> getApkList(File paramFile, String[] paramArrayOfString, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a(paramFile, paramArrayOfString, paramBoolean1, paramInt, paramBoolean2))
      return localArrayList;
  }

  public final ArrayList<AppEntity> getApkListFromSDCard(String[] paramArrayOfString, boolean paramBoolean, int paramInt)
  {
    if (isExpired());
    byp localbyp;
    File localFile;
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = localbyp.a(localFile, paramArrayOfString, paramBoolean, paramInt))
      do
      {
        return localArrayList;
        localbyp = this.a;
        localArrayList = new ArrayList();
        localFile = Environment.getExternalStorageDirectory();
      }
      while ((localFile == null) || (!localFile.exists()));
  }

  public final AppEntity getAppInfo(AppEntity paramAppEntity, int paramInt)
  {
    if (isExpired());
    for (AppEntity localAppEntity = new AppEntity(); ; localAppEntity = this.a.a(paramAppEntity, paramInt))
      return localAppEntity;
  }

  public final AppEntity getAppInfo(String paramString, int paramInt)
  {
    if (isExpired());
    byp localbyp;
    AppEntity localAppEntity2;
    for (AppEntity localAppEntity1 = new AppEntity(); ; localAppEntity1 = localbyp.a(localAppEntity2, paramInt))
    {
      return localAppEntity1;
      localbyp = this.a;
      localAppEntity2 = new AppEntity();
      localAppEntity2.put("pkgName", paramString);
    }
  }

  public final int getAppVersionStatus(String paramString, int paramInt)
  {
    int i = -2;
    if (isExpired());
    while (true)
    {
      return i;
      PackageInfo localPackageInfo = this.a.a(paramString, 0);
      if (localPackageInfo == null)
        i = -1;
      else if (paramInt == localPackageInfo.versionCode)
        i = 0;
      else if (paramInt < localPackageInfo.versionCode)
      {
        if (paramInt != 0)
          i = 2;
      }
      else
        i = 1;
    }
  }

  public final ArrayList<AppEntity> getAppsCanMovable(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a(paramInt1, paramInt2, paramBoolean))
      return localArrayList;
  }

  public final ArrayList<AppEntity> getInstalledApp(int paramInt1, int paramInt2)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a(paramInt1, paramInt2))
      return localArrayList;
  }

  public final void goToInstalledAppDetails(String paramString)
  {
    if (isExpired())
      return;
    byp localbyp = this.a;
    Intent localIntent = new Intent();
    int i = Build.VERSION.SDK_INT;
    localIntent.addFlags(268435456);
    if (i >= 9);
    while (true)
    {
      try
      {
        localIntent.setAction((String)di.a("android.provider.Settings", "ACTION_APPLICATION_DETAILS_SETTINGS"));
        localIntent.setData(Uri.fromParts("package", paramString, null));
        localbyp.a.startActivity(localIntent);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      break;
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra("pkg", paramString);
      localIntent.putExtra("com.android.settings.ApplicationPkgName", paramString);
    }
  }

  public final void installApp(File paramFile)
  {
    if (isExpired());
    while (true)
    {
      return;
      byp localbyp = this.a;
      if ((paramFile == null) || (!paramFile.exists()))
        break;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setFlags(268435456);
      localIntent.setDataAndType(Uri.fromFile(paramFile), "application/vnd.android.package-archive");
      localbyp.a.startActivity(localIntent);
    }
    throw new RuntimeException("the apkfile dosn't exist.");
  }

  public final void installApp(String paramString, Activity paramActivity, int paramInt)
  {
    if (isExpired());
    while (true)
    {
      return;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.android.package-archive");
      if (paramInt >= 0)
        paramActivity.startActivityForResult(localIntent, paramInt);
      else
        paramActivity.startActivity(localIntent);
    }
  }

  public final boolean installAppSilently(String paramString)
  {
    boolean bool1 = true;
    boolean bool2 = isExpired();
    boolean bool3 = false;
    if (bool2);
    boolean bool4;
    do
    {
      return bool3;
      bool4 = btd.c(paramString);
      bool3 = false;
    }
    while (!bool4);
    if (ScriptHelper.providerSupportPmRelative())
      bool1 = ScriptHelper.provider$24edfebd().k();
    while (true)
    {
      bool3 = bool1;
      break;
      if (!ScriptHelper.isSystemUid())
      {
        int i = ScriptHelper.canRunAtRoot();
        bool3 = false;
        if (i != 0)
          break;
      }
      String[] arrayOfString = new String[bool1];
      arrayOfString[0] = ("pm install -r " + paramString);
      if (ScriptHelper.runScriptIfSystemUidOrAsRoot(arrayOfString) != 0)
        bool1 = false;
    }
  }

  public final boolean isInstalledSdcard(String paramString)
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      PackageInfo localPackageInfo = this.a.a(paramString, 0);
      bool2 = false;
      if (localPackageInfo != null)
        bool2 = byn.a(localPackageInfo.applicationInfo);
    }
  }

  public final boolean isPackageInstalled(String paramString)
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      PackageInfo localPackageInfo = this.a.a(paramString, 0);
      bool2 = false;
      if (localPackageInfo != null)
        bool2 = true;
    }
  }

  public final boolean movePackageToExternal(String paramString)
    throws PackageManager.NameNotFoundException
  {
    if (isExpired());
    for (boolean bool = false; ; bool = byn.b(paramString))
      return bool;
  }

  public final boolean movePackageToInteranl(String paramString)
    throws PackageManager.NameNotFoundException
  {
    if (isExpired());
    for (boolean bool = false; ; bool = byn.a(paramString))
      return bool;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new byp();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final boolean packageHasActiveAdmins(String paramString)
  {
    return this.a.b.a(paramString);
  }

  public final boolean startUpApp(String paramString)
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.a(paramString))
      return bool;
  }

  public final void uninstallApp(String paramString, Activity paramActivity, int paramInt)
  {
    if (isExpired());
    while (true)
    {
      return;
      Intent localIntent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + paramString));
      if (paramInt >= 0)
        paramActivity.startActivityForResult(localIntent, paramInt);
      else
        paramActivity.startActivity(localIntent);
    }
  }

  public final boolean uninstallAppSilently(String paramString)
  {
    boolean bool1 = true;
    boolean bool2 = isExpired();
    boolean bool3 = false;
    if (bool2)
      return bool3;
    byp localbyp = this.a;
    if (ScriptHelper.providerSupportPmRelative())
      bool1 = ScriptHelper.provider$24edfebd().l();
    while (true)
    {
      bool3 = bool1;
      break;
      if (!ScriptHelper.isSystemUid())
      {
        int i = ScriptHelper.canRunAtRoot();
        bool3 = false;
        if (i != 0)
          break;
      }
      if (localbyp.b.a(paramString))
        localbyp.b.b(paramString);
      String[] arrayOfString = new String[bool1];
      arrayOfString[0] = ("pm uninstall " + paramString);
      if (ScriptHelper.runScriptIfSystemUidOrAsRoot(arrayOfString) != 0)
        bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.software.SoftwareManager
 * JD-Core Version:    0.6.2
 */