package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class RootMethodActivity extends BaseSinglePaneActivity
{
  private RootMethodFragment a;

  public static void call(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, RootMethodActivity.class));
  }

  protected Fragment d()
  {
    this.a = new RootMethodFragment();
    return this.a;
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
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.RootMethodActivity
 * JD-Core Version:    0.6.2
 */