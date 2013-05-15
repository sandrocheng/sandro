package com.avast.android.mobilesecurity.app.wizard;

import android.os.Bundle;
import com.avast.android.mobilesecurity.app.scanner.ScannerScanService;
import com.avast.android.mobilesecurity.scan.l;

public class WizardScannerScanService extends ScannerScanService
{
  protected l a(Bundle paramBundle)
  {
    paramBundle.putBoolean("update_vps_sequential", true);
    paramBundle.putBoolean("update_vps_forced", true);
    return new d(this, paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.WizardScannerScanService
 * JD-Core Version:    0.6.2
 */