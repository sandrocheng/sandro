package com.avast.android.mobilesecurity.app.scanner;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;

public class ScannerLogActivity extends BaseSinglePaneActivity
  implements k
{
  public void a()
  {
  }

  public void b()
  {
  }

  protected Fragment d()
  {
    ScannerLogFragment localScannerLogFragment = new ScannerLogFragment();
    localScannerLogFragment.setArguments(b(getIntent()));
    return localScannerLogFragment;
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ScannerLogActivity
 * JD-Core Version:    0.6.2
 */