package com.avast.android.mobilesecurity.app.wizard;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.app.ActionBar;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public class AntiTheftOfferActivity extends BaseSinglePaneActivity
{
  public static void call(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, AntiTheftOfferActivity.class));
  }

  protected Fragment d()
  {
    return new AntiTheftOfferFragment();
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
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.AntiTheftOfferActivity
 * JD-Core Version:    0.6.2
 */