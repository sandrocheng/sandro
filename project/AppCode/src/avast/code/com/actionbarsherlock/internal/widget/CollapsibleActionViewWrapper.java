package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.widget.FrameLayout;

public class CollapsibleActionViewWrapper extends FrameLayout
  implements android.view.CollapsibleActionView
{
  private final com.actionbarsherlock.view.CollapsibleActionView child;

  public CollapsibleActionViewWrapper(View paramView)
  {
    super(paramView.getContext());
    this.child = ((com.actionbarsherlock.view.CollapsibleActionView)paramView);
    addView(paramView);
  }

  public void onActionViewCollapsed()
  {
    this.child.onActionViewCollapsed();
  }

  public void onActionViewExpanded()
  {
    this.child.onActionViewExpanded();
  }

  public View unwrap()
  {
    return getChildAt(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.CollapsibleActionViewWrapper
 * JD-Core Version:    0.6.2
 */