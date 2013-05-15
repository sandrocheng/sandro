package com.avast.android.antitheft_setup_components.app.home;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.Application;
import com.avast.android.generic.ui.t;

public class InstallationModeActivity extends BaseSetupActivity
  implements t
{
  private InstallationModeFragment b;

  public static void call(Context paramContext)
  {
    if (paramContext.getPackageName().equals("com.avast.android.antitheft_setup"))
      Application.g();
    paramContext.startActivity(new Intent(paramContext, InstallationModeActivity.class));
  }

  protected Fragment d()
  {
    this.b = new InstallationModeFragment();
    return this.b;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    finish();
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
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.InstallationModeActivity
 * JD-Core Version:    0.6.2
 */