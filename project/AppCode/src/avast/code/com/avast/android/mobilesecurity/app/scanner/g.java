package com.avast.android.mobilesecurity.app.scanner;

import a.a.a.a.a.a;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.scan.ScanService;
import com.avast.android.mobilesecurity.t;
import java.io.File;
import java.util.List;

public class g extends af
{
  private final PackageInfo n;
  private final int o;

  public g(ScanService paramScanService, Bundle paramBundle)
  {
    super(paramScanService, paramBundle);
    this.n = ((PackageInfo)paramBundle.getParcelable("packageName"));
    int i = paramBundle.getInt("flags", 0);
    if ((i & 0x2) != 0);
    for (this.o = i; ; this.o = 1)
      return;
  }

  protected int a()
  {
    return 2131427335;
  }

  protected Boolean a(Void[] paramArrayOfVoid)
  {
    PackageInfo localPackageInfo = this.n;
    ApplicationInfo localApplicationInfo = localPackageInfo.applicationInfo;
    this.e.d = 1;
    this.e.b = localApplicationInfo.loadLabel(this.a).toString();
    this.e.f = 0;
    this.e.e = 0;
    this.e.h = 0;
    i();
    try
    {
      List localList = i.a(this.d, null, new File(localApplicationInfo.sourceDir), localPackageInfo, 0x20 | this.o);
      this.c.a(localList, localApplicationInfo, localApplicationInfo.loadLabel(this.a).toString(), null, 1);
      this.b.aw();
      localBoolean = Boolean.valueOf(true);
      return localBoolean;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        a.a().a("On demand scanning error for package [" + localPackageInfo.packageName + "]", localThrowable);
        m.b("On demand scanning error for package [" + localPackageInfo.packageName + "]", localThrowable);
        Boolean localBoolean = Boolean.valueOf(false);
      }
    }
  }

  protected Intent b()
  {
    return new Intent(this.d, ScannerLogActivity.class);
  }

  protected String c()
  {
    return this.d.getString(2131493390);
  }

  protected boolean e()
  {
    return ((t)ad.a(this.d, t.class)).Q();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.g
 * JD-Core Version:    0.6.2
 */