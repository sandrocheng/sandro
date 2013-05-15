package com.avast.android.mobilesecurity.app.scanner;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.avast.android.mobilesecurity.scan.ScanService;
import com.avast.android.mobilesecurity.scan.l;

public class OnDemandScannerScanService extends ScanService
{
  public static void a(Context paramContext, PackageInfo paramPackageInfo, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, OnDemandScannerScanService.class);
    localIntent.putExtra("packageName", paramPackageInfo);
    localIntent.putExtra("flags", paramInt);
    paramContext.startService(localIntent);
  }

  private void a(Intent paramIntent)
  {
    new g(this, paramIntent.getExtras()).execute(new Void[0]);
  }

  protected l a(Bundle paramBundle)
  {
    return null;
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent != null)
      a(paramIntent);
    return 2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.OnDemandScannerScanService
 * JD-Core Version:    0.6.2
 */