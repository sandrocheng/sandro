package com.actionbarsherlock.internal;

import com.actionbarsherlock.ActionBarSherlock.OnActionModeFinishedListener;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;

class ActionBarSherlockCompat$ActionModeCallbackWrapper
  implements ActionMode.Callback
{
  private final ActionMode.Callback mWrapped;

  public ActionBarSherlockCompat$ActionModeCallbackWrapper(ActionBarSherlockCompat paramActionBarSherlockCompat, ActionMode.Callback paramCallback)
  {
    this.mWrapped = paramCallback;
  }

  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return this.mWrapped.onActionItemClicked(paramActionMode, paramMenuItem);
  }

  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return this.mWrapped.onCreateActionMode(paramActionMode, paramMenu);
  }

  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    this.mWrapped.onDestroyActionMode(paramActionMode);
    if (ActionBarSherlockCompat.access$300(this.this$0) != null)
    {
      ActionBarSherlockCompat.access$300(this.this$0).setVisibility(8);
      ActionBarSherlockCompat.access$300(this.this$0).removeAllViews();
    }
    if ((ActionBarSherlockCompat.access$400(this.this$0) instanceof ActionBarSherlock.OnActionModeFinishedListener))
      ((ActionBarSherlock.OnActionModeFinishedListener)ActionBarSherlockCompat.access$600(this.this$0)).onActionModeFinished(ActionBarSherlockCompat.access$500(this.this$0));
    ActionBarSherlockCompat.access$502(this.this$0, null);
  }

  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return this.mWrapped.onPrepareActionMode(paramActionMode, paramMenu);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockCompat.ActionModeCallbackWrapper
 * JD-Core Version:    0.6.2
 */