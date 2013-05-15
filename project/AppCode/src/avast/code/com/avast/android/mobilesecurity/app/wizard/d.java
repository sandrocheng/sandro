package com.avast.android.mobilesecurity.app.wizard;

import android.content.Intent;
import android.os.Bundle;
import com.avast.android.mobilesecurity.app.scanner.af;
import com.avast.android.mobilesecurity.scan.ScanService;

public class d extends af
{
  public d(ScanService paramScanService, Bundle paramBundle)
  {
    super(paramScanService, paramBundle);
  }

  protected Intent b()
  {
    return new Intent(this.d, ScanWizardActivity.class);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.d
 * JD-Core Version:    0.6.2
 */