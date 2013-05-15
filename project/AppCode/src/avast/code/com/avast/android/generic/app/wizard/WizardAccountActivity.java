package com.avast.android.generic.app.wizard;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.app.ActionBar;
import com.avast.android.generic.app.account.AccountFragment;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class WizardAccountActivity extends BaseSinglePaneActivity
{
  public static void call(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, WizardAccountActivity.class);
    localIntent.putExtra("wizard", true);
    localIntent.putExtra("hideTitlebar", paramBoolean);
    paramContext.startActivity(localIntent);
  }

  protected Fragment d()
  {
    return new AccountFragment();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ActionBar localActionBar = getSupportActionBar();
    if (localActionBar != null)
      localActionBar.setHomeButtonEnabled(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.WizardAccountActivity
 * JD-Core Version:    0.6.2
 */