package com.actionbarsherlock.view;

public abstract interface ActionMode$Callback
{
  public abstract boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem);

  public abstract boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu);

  public abstract void onDestroyActionMode(ActionMode paramActionMode);

  public abstract boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.view.ActionMode.Callback
 * JD-Core Version:    0.6.2
 */