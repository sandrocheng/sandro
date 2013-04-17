package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.AdapterView;
import android.widget.GridView;

class ExpandedTaskManagerWindow$1$1
  implements Animation.AnimationListener
{
  ExpandedTaskManagerWindow$1$1(ExpandedTaskManagerWindow.1 param1, AdapterView paramAdapterView, int paramInt)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    ExpandedTaskManagerWindow.TaskManagerDataAdapter localTaskManagerDataAdapter = (ExpandedTaskManagerWindow.TaskManagerDataAdapter)this.val$sParent.getAdapter();
    ExpandedTaskManagerWindow.access$200(this.this$1.this$0).setEnabled(true);
    localTaskManagerDataAdapter.closeApp(this.val$sPosition);
    ExpandedTaskManagerWindow.access$300(this.this$1.this$0);
    this.this$1.this$0.mTaskManagerDataAdapter.notifyDataSetChanged();
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedTaskManagerWindow.1.1
 * JD-Core Version:    0.6.2
 */