package com.avast.android.mobilesecurity.app.wizard;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.al;
import com.avast.android.mobilesecurity.app.home.HomeActivity;
import com.avast.android.mobilesecurity.scan.ScanFragment;
import com.avast.android.mobilesecurity.scan.g;

public class ScanWizardActivity extends BaseSinglePaneActivity
  implements g
{
  public static void call(Context paramContext)
  {
    if (al.a(paramContext))
      HomeActivity.call(paramContext);
    while (true)
    {
      return;
      paramContext.startActivity(new Intent(paramContext, ScanWizardActivity.class));
    }
  }

  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      startActivity(new Intent(this, HomeActivity.class));
      finish();
    }
  }

  public void c(boolean paramBoolean)
  {
  }

  protected Fragment d()
  {
    ScanFragment localScanFragment = new ScanFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("serviceClass", WizardScannerScanService.class);
    localBundle.putBoolean("skipable", true);
    localScanFragment.setArguments(localBundle);
    return localScanFragment;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    startService(new Intent(this, WizardScannerScanService.class));
    ActionBar localActionBar = getSupportActionBar();
    if (localActionBar != null)
      localActionBar.setHomeButtonEnabled(false);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 16908332:
    }
    for (boolean bool = super.onOptionsItemSelected(paramMenuItem); ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.ScanWizardActivity
 * JD-Core Version:    0.6.2
 */