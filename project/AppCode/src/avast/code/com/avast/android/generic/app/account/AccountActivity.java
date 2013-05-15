package com.avast.android.generic.app.account;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class AccountActivity extends BaseSinglePaneActivity
{
  private boolean a;

  public static void call(Context paramContext, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramContext, AccountActivity.class);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    if ((paramContext instanceof BaseActivity))
      ((BaseActivity)paramContext).a(localIntent);
    while (true)
    {
      return;
      paramContext.startActivity(localIntent);
    }
  }

  protected SherlockFragment a()
  {
    return new AccountFragment();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ActionBar localActionBar = getSupportActionBar();
    if (localActionBar != null)
      localActionBar.setHomeButtonEnabled(true);
    this.a = getIntent().getBooleanExtra("hideTitlebar", false);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == 16908332) && (this.a))
      finish();
    for (boolean bool = true; ; bool = super.onOptionsItemSelected(paramMenuItem))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.AccountActivity
 * JD-Core Version:    0.6.2
 */