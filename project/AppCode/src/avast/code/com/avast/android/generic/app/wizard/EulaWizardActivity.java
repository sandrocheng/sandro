package com.avast.android.generic.app.wizard;

import android.os.Bundle;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public abstract class EulaWizardActivity extends BaseSinglePaneActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
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

  protected void onStart()
  {
    super.onStart();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.EulaWizardActivity
 * JD-Core Version:    0.6.2
 */