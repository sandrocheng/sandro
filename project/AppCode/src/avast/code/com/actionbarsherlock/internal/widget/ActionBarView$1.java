package com.actionbarsherlock.internal.widget;

import android.view.View;
import com.actionbarsherlock.app.ActionBar.OnNavigationListener;

class ActionBarView$1
  implements IcsAdapterView.OnItemSelectedListener
{
  ActionBarView$1(ActionBarView paramActionBarView)
  {
  }

  public void onItemSelected(IcsAdapterView paramIcsAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (ActionBarView.access$000(this.this$0) != null)
      ActionBarView.access$000(this.this$0).onNavigationItemSelected(paramInt, paramLong);
  }

  public void onNothingSelected(IcsAdapterView paramIcsAdapterView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.1
 * JD-Core Version:    0.6.2
 */