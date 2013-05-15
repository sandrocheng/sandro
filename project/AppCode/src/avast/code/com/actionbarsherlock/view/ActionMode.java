package com.actionbarsherlock.view;

import android.view.View;

public abstract class ActionMode
{
  private Object mTag;

  public abstract void finish();

  public abstract View getCustomView();

  public abstract Menu getMenu();

  public abstract MenuInflater getMenuInflater();

  public abstract CharSequence getSubtitle();

  public Object getTag()
  {
    return this.mTag;
  }

  public abstract CharSequence getTitle();

  public abstract void invalidate();

  public boolean isUiFocusable()
  {
    return true;
  }

  public abstract void setCustomView(View paramView);

  public abstract void setSubtitle(int paramInt);

  public abstract void setSubtitle(CharSequence paramCharSequence);

  public void setTag(Object paramObject)
  {
    this.mTag = paramObject;
  }

  public abstract void setTitle(int paramInt);

  public abstract void setTitle(CharSequence paramCharSequence);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.view.ActionMode
 * JD-Core Version:    0.6.2
 */