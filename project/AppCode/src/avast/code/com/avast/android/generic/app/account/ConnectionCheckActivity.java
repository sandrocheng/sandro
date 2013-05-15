package com.avast.android.generic.app.account;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class ConnectionCheckActivity extends BaseSinglePaneActivity
{
  private boolean a;
  private ConnectionCheckFragment b;

  public static void call(Context paramContext, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramContext, ConnectionCheckActivity.class);
    localIntent.putExtras(paramBundle);
    paramContext.startActivity(localIntent);
  }

  protected SherlockFragment a()
  {
    this.b = new ConnectionCheckFragment();
    return this.b;
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
 * Qualified Name:     com.avast.android.generic.app.account.ConnectionCheckActivity
 * JD-Core Version:    0.6.2
 */