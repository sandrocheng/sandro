package android.support.v4.app;

import android.view.View;
import com.actionbarsherlock.ActionBarSherlock.OnCreatePanelMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnMenuItemSelectedListener;
import com.actionbarsherlock.ActionBarSherlock.OnPreparePanelListener;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import java.util.ArrayList;

public abstract class Watson extends FragmentActivity
  implements ActionBarSherlock.OnCreatePanelMenuListener, ActionBarSherlock.OnMenuItemSelectedListener, ActionBarSherlock.OnPreparePanelListener
{
  private static final boolean DEBUG = false;
  private static final String TAG = "Watson";
  private ArrayList mCreatedMenus;

  public abstract MenuInflater getSupportMenuInflater();

  public abstract boolean onCreateOptionsMenu(Menu paramMenu);

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    boolean bool1 = false;
    boolean bool2;
    Object localObject1;
    int j;
    boolean bool3;
    Object localObject2;
    if (paramInt == 0)
    {
      bool2 = onCreateOptionsMenu(paramMenu);
      MenuInflater localMenuInflater = getSupportMenuInflater();
      localObject1 = null;
      if (this.mFragments.mAdded != null)
      {
        j = 0;
        bool3 = false;
        if (j >= this.mFragments.mAdded.size())
          break label162;
        Fragment localFragment2 = (Fragment)this.mFragments.mAdded.get(j);
        if ((localFragment2 == null) || (localFragment2.mHidden) || (!localFragment2.mHasMenu) || (!localFragment2.mMenuVisible) || (!(localFragment2 instanceof Watson.OnCreateOptionsMenuListener)))
          break label249;
        ((Watson.OnCreateOptionsMenuListener)localFragment2).onCreateOptionsMenu(paramMenu, localMenuInflater);
        if (localObject1 != null)
          break label242;
        localObject2 = new ArrayList();
        label134: ((ArrayList)localObject2).add(localFragment2);
        localObject1 = localObject2;
      }
    }
    label162: label242: label249: for (boolean bool4 = true; ; bool4 = bool3)
    {
      j++;
      bool3 = bool4;
      break;
      bool3 = false;
      ArrayList localArrayList = this.mCreatedMenus;
      int i = 0;
      if (localArrayList != null)
        while (i < this.mCreatedMenus.size())
        {
          Fragment localFragment1 = (Fragment)this.mCreatedMenus.get(i);
          if ((localObject1 == null) || (!localObject1.contains(localFragment1)))
            localFragment1.onDestroyOptionsMenu();
          i++;
        }
      this.mCreatedMenus = localObject1;
      bool1 = bool2 | bool3;
      return bool1;
      localObject2 = localObject1;
      break label134;
    }
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    boolean bool = false;
    if (paramInt == 0)
    {
      if (!onOptionsItemSelected(paramMenuItem))
        break label18;
      bool = true;
    }
    label18: ArrayList localArrayList;
    do
    {
      return bool;
      localArrayList = this.mFragments.mAdded;
      bool = false;
    }
    while (localArrayList == null);
    for (int i = 0; ; i++)
    {
      int j = this.mFragments.mAdded.size();
      bool = false;
      if (i >= j)
        break;
      Fragment localFragment = (Fragment)this.mFragments.mAdded.get(i);
      if ((localFragment != null) && (!localFragment.mHidden) && (localFragment.mHasMenu) && (localFragment.mMenuVisible) && ((localFragment instanceof Watson.OnOptionsItemSelectedListener)) && (((Watson.OnOptionsItemSelectedListener)localFragment).onOptionsItemSelected(paramMenuItem)))
      {
        bool = true;
        break;
      }
    }
  }

  public abstract boolean onOptionsItemSelected(MenuItem paramMenuItem);

  public abstract boolean onPrepareOptionsMenu(Menu paramMenu);

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    boolean bool1 = false;
    if (paramInt == 0)
    {
      boolean bool2 = onPrepareOptionsMenu(paramMenu);
      if (this.mFragments.mAdded != null)
      {
        int i = 0;
        bool3 = false;
        while (i < this.mFragments.mAdded.size())
        {
          Fragment localFragment = (Fragment)this.mFragments.mAdded.get(i);
          if ((localFragment != null) && (!localFragment.mHidden) && (localFragment.mHasMenu) && (localFragment.mMenuVisible) && ((localFragment instanceof Watson.OnPrepareOptionsMenuListener)))
          {
            bool3 = true;
            ((Watson.OnPrepareOptionsMenuListener)localFragment).onPrepareOptionsMenu(paramMenu);
          }
          i++;
        }
      }
      boolean bool3 = false;
      bool1 = (bool2 | bool3) & paramMenu.hasVisibleItems();
    }
    return bool1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.Watson
 * JD-Core Version:    0.6.2
 */