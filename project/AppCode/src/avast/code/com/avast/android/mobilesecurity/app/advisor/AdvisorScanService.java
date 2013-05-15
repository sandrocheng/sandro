package com.avast.android.mobilesecurity.app.advisor;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.avast.android.mobilesecurity.e;
import com.avast.android.mobilesecurity.f;
import com.avast.android.mobilesecurity.scan.ScanService;
import com.avast.android.mobilesecurity.scan.l;

public class AdvisorScanService extends ScanService
{
  private static void a(ContentResolver paramContentResolver, String paramString)
  {
    paramContentResolver.delete(e.a(), "packageName = ?", new String[] { paramString });
    paramContentResolver.notifyChange(f.a(), null);
  }

  public static void a(Context paramContext, PackageInfo paramPackageInfo)
  {
    Intent localIntent = new Intent(paramContext, AdvisorScanService.class);
    localIntent.putExtra("packageInfo", paramPackageInfo);
    localIntent.putExtra("startNow", true);
    paramContext.startService(localIntent);
  }

  public static void a(Context paramContext, String paramString)
  {
    a(paramContext.getContentResolver(), paramString);
  }

  protected l a(Bundle paramBundle)
  {
    return new g(this, paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.AdvisorScanService
 * JD-Core Version:    0.6.2
 */