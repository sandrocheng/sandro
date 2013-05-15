package com.avast.android.antitheft_setup_components.app.home;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.t;
import com.avast.android.generic.util.a;

public class SetupCheckWizardActivity extends BaseSetupActivity
  implements t
{
  private SetupCheckFragment b;

  public static void call(Context paramContext)
  {
    if (new ai(paramContext, null).a(paramContext))
      paramContext.startActivity(new Intent(paramContext, SetupCheckWizardActivity.class));
    while (true)
    {
      return;
      SetupCheckFragment.a(paramContext);
    }
  }

  protected Fragment d()
  {
    this.b = new SetupCheckFragment();
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
    e().a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.SetupCheckWizardActivity
 * JD-Core Version:    0.6.2
 */