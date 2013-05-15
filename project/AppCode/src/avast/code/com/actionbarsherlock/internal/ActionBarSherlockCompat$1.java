package com.actionbarsherlock.internal;

import android.app.Activity;

class ActionBarSherlockCompat$1
  implements Runnable
{
  ActionBarSherlockCompat$1(ActionBarSherlockCompat paramActionBarSherlockCompat)
  {
  }

  public void run()
  {
    if ((!ActionBarSherlockCompat.access$000(this.this$0)) && (!ActionBarSherlockCompat.access$100(this.this$0).isFinishing()) && (ActionBarSherlockCompat.access$200(this.this$0) == null))
      this.this$0.dispatchInvalidateOptionsMenu();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockCompat.1
 * JD-Core Version:    0.6.2
 */