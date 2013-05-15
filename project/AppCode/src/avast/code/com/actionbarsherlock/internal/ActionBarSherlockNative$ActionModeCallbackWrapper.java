package com.actionbarsherlock.internal;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeFinishedListener;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;

class ActionBarSherlockNative$ActionModeCallbackWrapper
  implements android.view.ActionMode.Callback
{
  private final com.actionbarsherlock.view.ActionMode.Callback mCallback;

  public ActionBarSherlockNative$ActionModeCallbackWrapper(ActionBarSherlockNative paramActionBarSherlockNative, com.actionbarsherlock.view.ActionMode.Callback paramCallback)
  {
    this.mCallback = paramCallback;
  }

  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return this.mCallback.onActionItemClicked(ActionBarSherlockNative.access$000(this.this$0), ActionBarSherlockNative.access$000(this.this$0).getMenu().findItem(paramMenuItem));
  }

  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    ActionBarSherlockNative.access$002(this.this$0, new ActionBarSherlockNative.ActionModeWrapper(this.this$0, paramActionMode));
    return this.mCallback.onCreateActionMode(ActionBarSherlockNative.access$000(this.this$0), ActionBarSherlockNative.access$000(this.this$0).getMenu());
  }

  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    this.mCallback.onDestroyActionMode(ActionBarSherlockNative.access$000(this.this$0));
    if ((ActionBarSherlockNative.access$100(this.this$0) instanceof ActionBarSherlock.OnActionModeFinishedListener))
      ((ActionBarSherlock.OnActionModeFinishedListener)ActionBarSherlockNative.access$200(this.this$0)).onActionModeFinished(ActionBarSherlockNative.access$000(this.this$0));
  }

  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return this.mCallback.onPrepareActionMode(ActionBarSherlockNative.access$000(this.this$0), ActionBarSherlockNative.access$000(this.this$0).getMenu());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockNative.ActionModeCallbackWrapper
 * JD-Core Version:    0.6.2
 */