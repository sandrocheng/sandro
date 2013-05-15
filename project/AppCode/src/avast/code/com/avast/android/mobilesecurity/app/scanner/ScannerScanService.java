package com.avast.android.mobilesecurity.app.scanner;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avast.android.mobilesecurity.scan.ScanService;
import com.avast.android.mobilesecurity.scan.l;

public class ScannerScanService extends ScanService
{
  public static void a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, ScannerScanService.class);
    localIntent.putExtra("startNow", paramBoolean1);
    localIntent.putExtra("skip_vps_update", paramBoolean2);
    localIntent.putExtra("flags", paramInt);
    paramContext.startService(localIntent);
  }

  protected l a(Bundle paramBundle)
  {
    return new af(this, paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ScannerScanService
 * JD-Core Version:    0.6.2
 */