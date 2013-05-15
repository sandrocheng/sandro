package com.avast.android.generic.filebrowser;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.avast.android.generic.ui.BaseSinglePaneActivity;

public abstract class AbstractFileBrowserActivity extends BaseSinglePaneActivity
{
  public static final String a = d.a.toString();
  public static final String b = d.b.toString();
  public static final String c = d.c.toString();

  protected abstract AbstractFileBrowserFragment a();

  protected Fragment d()
  {
    return a();
  }

  public void onBackPressed()
  {
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag("singleFragment");
    if ((localFragment != null) && ((localFragment instanceof AbstractFileBrowserFragment)))
      if (!((AbstractFileBrowserFragment)localFragment).d())
        finish();
    while (true)
    {
      return;
      super.onBackPressed();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.filebrowser.AbstractFileBrowserActivity
 * JD-Core Version:    0.6.2
 */