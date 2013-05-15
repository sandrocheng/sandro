package com.actionbarsherlock.app;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.Watson.OnCreateOptionsMenuListener;
import android.support.v4.app.Watson.OnOptionsItemSelectedListener;
import android.support.v4.app.Watson.OnPrepareOptionsMenuListener;
import com.actionbarsherlock.internal.view.menu.MenuItemWrapper;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;

public class SherlockFragment extends Fragment
  implements Watson.OnCreateOptionsMenuListener, Watson.OnOptionsItemSelectedListener, Watson.OnPrepareOptionsMenuListener
{
  private SherlockFragmentActivity mActivity;

  public SherlockFragmentActivity getSherlockActivity()
  {
    return this.mActivity;
  }

  public void onAttach(Activity paramActivity)
  {
    if (!(paramActivity instanceof SherlockFragmentActivity))
      throw new IllegalStateException(getClass().getSimpleName() + " must be attached to a SherlockFragmentActivity.");
    this.mActivity = ((SherlockFragmentActivity)paramActivity);
    super.onAttach(paramActivity);
  }

  public final void onCreateOptionsMenu(android.view.Menu paramMenu, android.view.MenuInflater paramMenuInflater)
  {
    onCreateOptionsMenu(new MenuWrapper(paramMenu), this.mActivity.getSupportMenuInflater());
  }

  public void onCreateOptionsMenu(com.actionbarsherlock.view.Menu paramMenu, com.actionbarsherlock.view.MenuInflater paramMenuInflater)
  {
  }

  public void onDetach()
  {
    this.mActivity = null;
    super.onDetach();
  }

  public final boolean onOptionsItemSelected(android.view.MenuItem paramMenuItem)
  {
    return onOptionsItemSelected(new MenuItemWrapper(paramMenuItem));
  }

  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onPrepareOptionsMenu(android.view.Menu paramMenu)
  {
    onPrepareOptionsMenu(new MenuWrapper(paramMenu));
  }

  public void onPrepareOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.app.SherlockFragment
 * JD-Core Version:    0.6.2
 */