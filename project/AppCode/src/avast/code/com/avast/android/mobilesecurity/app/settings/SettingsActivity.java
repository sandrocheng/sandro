package com.avast.android.mobilesecurity.app.settings;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;
import com.avast.android.mobilesecurity.ui.widget.YesNoDialogFragment;
import com.avast.android.mobilesecurity.ui.widget.y;

public class SettingsActivity extends BaseSinglePaneActivity
  implements y
{
  public static void call(Context paramContext)
  {
    ((BaseActivity)paramContext).a(SettingsActivity.class);
  }

  public void a(YesNoDialogFragment paramYesNoDialogFragment)
  {
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag("singleFragment");
    if ((localFragment != null) && ((localFragment instanceof y)))
      ((y)localFragment).a(paramYesNoDialogFragment);
  }

  public void b(YesNoDialogFragment paramYesNoDialogFragment)
  {
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag("singleFragment");
    if ((localFragment != null) && ((localFragment instanceof y)))
      ((y)localFragment).b(paramYesNoDialogFragment);
  }

  protected Fragment d()
  {
    return new SettingsFragment();
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.SettingsActivity
 * JD-Core Version:    0.6.2
 */