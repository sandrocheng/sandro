package com.avg.tuneup.taskkiller;

import android.view.View;
import android.widget.LinearLayout;
import com.avg.a.e;

class m
  implements Runnable
{
  m(d paramd, LinearLayout paramLinearLayout, View paramView)
  {
  }

  public void run()
  {
    this.a.removeAllViews();
    this.b.findViewById(e.ll_bottom_panel).setVisibility(8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.m
 * JD-Core Version:    0.6.2
 */