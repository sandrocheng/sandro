package com.avast.android.mobilesecurity;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.avast.android.generic.ae;
import com.avast.android.generic.af;
import com.avast.android.mobilesecurity.app.globalactivitylog.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class t extends ae
{
  private static final Object d = new Object();
  Context c;

  public t(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext;
  }

  private void l(String paramString)
  {
    a("gLastSeenVersion", paramString);
    b();
  }

  public boolean S()
  {
    return super.b("gSettingsWebshieldEnabled", true);
  }

  public boolean T()
  {
    return super.b("gSettingsWebshieldPhishingEnabled", true);
  }

  public boolean U()
  {
    return super.b("gSettingsWebshieldMalwareEnabled", true);
  }

  public boolean V()
  {
    return super.b("gSettingsTyposquattingEnabled", true);
  }

  public boolean W()
  {
    return super.b("gSettingsTyposquattingAutocorrect", false);
  }

  public boolean X()
  {
    return b("gSettingsFirewallEnabled", false);
  }

  public boolean Y()
  {
    return b("gSettingsFirewallLogEnabled", false);
  }

  public boolean Z()
  {
    return b("gSettingsFirewallIpV6Enabled", false);
  }

  public void a(ae paramae1, ae paramae2, HashMap paramHashMap, af paramaf)
  {
  }

  public void a(List paramList)
  {
    if (paramList == null)
      a("settingsScanStorageDirs", "");
    while (true)
    {
      b();
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        localStringBuilder.append((String)localIterator.next()).append('\000');
      if (localStringBuilder.length() >= 1)
        localStringBuilder.delete(-1 + localStringBuilder.length(), localStringBuilder.length());
      a("settingsScanStorageDirs", localStringBuilder.toString());
    }
  }

  public void a(Set paramSet)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
      localStringBuilder.append(((a)localIterator.next()).a()).append(";");
    if (localStringBuilder.length() > 1)
      localStringBuilder.delete(-1 + localStringBuilder.length(), localStringBuilder.length());
    a("globalActivityLogFilter", localStringBuilder.toString());
    b();
  }

  public void aA()
  {
    a();
    a("scannedUrlsTotal", 1 + az());
    b();
  }

  public int aB()
  {
    return b("scannedStorageShieldFilesTotal", 0);
  }

  public boolean aC()
  {
    return b("gSettingsAutomaticUpdates", true);
  }

  public boolean aD()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.c.getSystemService("connectivity")).getActiveNetworkInfo();
    boolean bool;
    if (localNetworkInfo == null)
      bool = false;
    while (true)
    {
      return bool;
      if ((localNetworkInfo.getType() == 1) || (localNetworkInfo.getType() == 6) || (localNetworkInfo.getType() == 9) || (localNetworkInfo.getType() == 7))
        bool = b("gSettingsAutoUpdateOnWifi", true);
      else if (localNetworkInfo.isRoaming())
        bool = b("gSettingsAutoUpdateOnRoaming", false);
      else if ((localNetworkInfo.getType() == 0) || (localNetworkInfo.getType() == 4) || (localNetworkInfo.getType() == 5) || (localNetworkInfo.getType() == 3))
        bool = b("gSettingsAutoUpdateOnMobile", true);
      else
        bool = true;
    }
  }

  public long aE()
  {
    return b("gSettingsNextUpdate", 240000L + System.currentTimeMillis());
  }

  public void aF()
  {
    a();
    a("flagApkOutdated", ((Application)this.c.getApplicationContext()).b());
    b();
  }

  public boolean aG()
  {
    if (b("flagApkOutdated", 0) == ((Application)this.c.getApplicationContext()).b());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean aH()
  {
    return b("gSettingsPupEnabled", true);
  }

  public boolean aI()
  {
    return b("gSettingsScanWakelock", true);
  }

  public boolean aJ()
  {
    return b("gFirewallBlacklistMode", true);
  }

  public boolean aK()
  {
    return b("gSettingsTrafficInfoEnabled", true);
  }

  public int aL()
  {
    return b("gSettingsTrafficInfoDayInMonth", 1);
  }

  public boolean aM()
  {
    return b("gRooted", false);
  }

  public boolean aN()
  {
    synchronized (d)
    {
      boolean bool = b("gConnectivityStateChangedReceiverEnabled", false);
      return bool;
    }
  }

  public boolean aO()
  {
    return b("settingsScanApps", true);
  }

  public boolean aP()
  {
    return b("settingsScanExternal", false);
  }

  public boolean aQ()
  {
    return b("settingsScanAutomatic", false);
  }

  public int aR()
  {
    return b("settingsScanAutomaticDays", 0);
  }

  public int aS()
  {
    return b("settingsScanAutomaticTime", 0);
  }

  public List aT()
  {
    String str = b("settingsScanStorageDirs", "");
    if (TextUtils.isEmpty(str));
    for (List localList = null; ; localList = Arrays.asList(str.split(String.valueOf('\000'))))
    {
      return localList;
      new ArrayList();
    }
  }

  public Set aU()
  {
    HashSet localHashSet = new HashSet();
    String str = b("globalActivityLogFilter", null);
    if (str != null)
    {
      if (!TextUtils.isEmpty(str))
      {
        String[] arrayOfString = str.split(";");
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
        {
          a locala = a.a(Integer.valueOf(arrayOfString[j]).intValue());
          if (locala != null)
            localHashSet.add(locala);
        }
      }
    }
    else
      localHashSet.addAll(EnumSet.allOf(a.class));
    return localHashSet;
  }

  public long aV()
  {
    return b("globalActivityLogLastId", 0L);
  }

  public boolean aW()
  {
    return b("gSettingsGlobalActivityLogExternal", true);
  }

  public boolean aX()
  {
    return b("sideMenuShown", false);
  }

  public boolean aY()
  {
    return b("gSettingsUninstallProtectionEnabled", true);
  }

  public int aZ()
  {
    return b("gPinTimeout", 5000);
  }

  public boolean aa()
  {
    return b("gSettingsFirewallUppermostEnabled", false);
  }

  public boolean ab()
  {
    return b("gSettingsAppLockingEnabled", false);
  }

  public boolean ac()
  {
    return b("gSettingsFileShieldEnabled", true);
  }

  public boolean ad()
  {
    return b("gSettingsFileShieldReadEnabled", false);
  }

  public boolean ae()
  {
    return b("gSettingsFileShieldWriteEnabled", true);
  }

  public boolean af()
  {
    return b("gSettingsFileShieldMountEnabled", false);
  }

  public boolean ag()
  {
    return b("gSettingsAppShieldEnabled", true);
  }

  public boolean ah()
  {
    return b("gSettingsAppExecShieldEnabled", true);
  }

  public boolean ai()
  {
    return b("gSettingsAppInstallShieldEnabled", true);
  }

  public boolean aj()
  {
    return b("gSettingsMessageShieldEnabled", true);
  }

  public boolean ak()
  {
    return b("gSettingsMessageIncomingShieldEnabled", true);
  }

  public boolean al()
  {
    return b("gSettingsSmsBlockProposal", false);
  }

  public boolean am()
  {
    return b("hasMalware", false);
  }

  public void an()
  {
    a();
    a("malwareApps", 1 + ar());
    b();
  }

  public void ao()
  {
    a();
    a("malwareApps", Math.max(0, -1 + ar()));
    b();
  }

  public void ap()
  {
    a();
    a("malwareAppsIgnore", 1 + at());
    b();
  }

  public void aq()
  {
    a();
    a("malwareAppsIgnore", Math.max(0, -1 + at()));
    b();
  }

  public int ar()
  {
    return b("malwareApps", 0);
  }

  public int as()
  {
    return b("malwareFiles", 0);
  }

  public int at()
  {
    return b("malwareAppsIgnore", 0);
  }

  public int au()
  {
    return b("malwareFilesIgnore", 0);
  }

  public int av()
  {
    return b("scannedAppsTotal", 0);
  }

  public void aw()
  {
    a();
    a("scannedAppsTotal", 1 + av());
    b();
  }

  public int ax()
  {
    return b("scannedMessagesTotal", 0);
  }

  public void ay()
  {
    a();
    a("scannedMessagesTotal", 1 + ax());
    b();
  }

  public int az()
  {
    return b("scannedUrlsTotal", 0);
  }

  public String b(Context paramContext)
  {
    String str1 = b("gLastSeenVersion", "");
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      String str2 = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).versionName;
      if (!str2.equals(str1))
        l(str2);
      label43: return str1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label43;
    }
  }

  public void b(int paramInt)
  {
    a();
    a("malwareApps", paramInt);
    b();
  }

  public void c(int paramInt)
  {
    a();
    a("malwareFiles", paramInt);
    b();
  }

  public void d(int paramInt)
  {
    a();
    a("malwareAppsIgnore", paramInt);
    b();
  }

  public void e(int paramInt)
  {
    a();
    a("malwareFilesIgnore", paramInt);
    b();
  }

  public void f(int paramInt)
  {
    a();
    a("scannedStorageShieldFilesTotal", paramInt + aB());
    b();
  }

  public void f(boolean paramBoolean)
  {
    a("gSettingsTyposquattingAutocorrect", paramBoolean);
    b();
  }

  public void g(long paramLong)
  {
    a();
    a("gSettingsNextUpdate", paramLong);
    b();
  }

  public boolean g(int paramInt)
  {
    a("gSettingsTrafficInfoDayInMonth", paramInt);
    return b();
  }

  public boolean g(boolean paramBoolean)
  {
    a("gSettingsFirewallEnabled", paramBoolean);
    return b();
  }

  public void h(long paramLong)
  {
    a("globalActivityLogLastId", paramLong);
    b();
  }

  public void h(boolean paramBoolean)
  {
    a("gSettingsFirewallLogEnabled", paramBoolean);
    b();
  }

  public void i(boolean paramBoolean)
  {
    a("gSettingsFirewallIpV6Enabled", paramBoolean);
    b();
  }

  public void j(boolean paramBoolean)
  {
    a("gSettingsFirewallUppermostEnabled", paramBoolean);
    b();
  }

  public void k(boolean paramBoolean)
  {
    a("gSettingsFileShieldReadEnabled", paramBoolean);
    b();
  }

  public void l(boolean paramBoolean)
  {
    a("hasMalware", paramBoolean);
    b();
  }

  public void m(boolean paramBoolean)
  {
    a();
    a("gFirewallBlacklistMode", paramBoolean);
    b();
  }

  public boolean n(boolean paramBoolean)
  {
    a("gSettingsTrafficInfoEnabled", paramBoolean);
    return b();
  }

  public boolean o(boolean paramBoolean)
  {
    a("gRooted", paramBoolean);
    return b();
  }

  public boolean p(boolean paramBoolean)
  {
    synchronized (d)
    {
      a("gConnectivityStateChangedReceiverEnabled", paramBoolean);
      boolean bool = b();
      return bool;
    }
  }

  public void q(boolean paramBoolean)
  {
    a("sideMenuShown", paramBoolean);
    b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.t
 * JD-Core Version:    0.6.2
 */