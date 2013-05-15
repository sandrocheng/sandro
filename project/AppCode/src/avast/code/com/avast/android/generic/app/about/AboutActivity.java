package com.avast.android.generic.app.about;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.s;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;
import com.avast.android.generic.z;

public class AboutActivity extends BaseSinglePaneActivity
{
  private boolean a;

  public static void call(Context paramContext, Bundle paramBundle)
  {
    ((BaseActivity)paramContext).a(AboutActivity.class, paramBundle);
  }

  protected SherlockFragment a()
  {
    return new AboutFragment();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = getIntent().getBooleanExtra("not_ams", false);
    ActionBar localActionBar = getSupportActionBar();
    localActionBar.setHomeButtonEnabled(true);
    localActionBar.setTitle(z.bm);
    if ((this.a) && (!getIntent().getBooleanExtra("anti_theft", false)) && (!getIntent().getBooleanExtra("backup", false)))
    {
      localActionBar.setDisplayHomeAsUpEnabled(true);
      localActionBar.setDisplayShowTitleEnabled(true);
      localActionBar.setLogo(s.l);
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == 16908332) && (this.a))
      finish();
    for (boolean bool = true; ; bool = super.onOptionsItemSelected(paramMenuItem))
      return bool;
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.AboutActivity
 * JD-Core Version:    0.6.2
 */