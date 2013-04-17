package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.Intent;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

public abstract class ViewFramework
{
  protected Context mContext;
  private boolean mCreated;

  public ViewFramework(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public BaseUIActivity getActivity()
  {
    return (BaseUIActivity)this.mContext;
  }

  public Context getContext()
  {
    return this.mContext;
  }

  public abstract View getView();

  public boolean isCreated()
  {
    return this.mCreated;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public void onBackClick()
  {
    getActivity().finish();
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public void onCreate()
  {
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public void onDestroy()
  {
  }

  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return false;
  }

  public void onNewIntent(Intent paramIntent)
  {
  }

  public boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return false;
  }

  public void onPause()
  {
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public void onResume()
  {
  }

  public void onStart()
  {
    this.mCreated = true;
  }

  public void onStop()
  {
  }

  public void setCreated(boolean paramBoolean)
  {
    this.mCreated = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ViewFramework
 * JD-Core Version:    0.6.2
 */