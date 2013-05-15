package com.avast.android.antitheft_setup_components.app.home;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.view.MenuItem;

public class DownloadWizardActivity extends BaseSetupActivity
{
  private DownloadFragment b;

  protected Fragment d()
  {
    this.b = new DownloadFragment();
    return this.b;
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

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.DownloadWizardActivity
 * JD-Core Version:    0.6.2
 */