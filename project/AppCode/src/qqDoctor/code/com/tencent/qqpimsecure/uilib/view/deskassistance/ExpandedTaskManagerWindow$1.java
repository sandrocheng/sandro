package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.view.View;
import android.view.animation.ScaleAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import nd;

class ExpandedTaskManagerWindow$1
  implements AdapterView.OnItemClickListener
{
  ExpandedTaskManagerWindow$1(ExpandedTaskManagerWindow paramExpandedTaskManagerWindow)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ExpandedTaskManagerWindow.access$100(this.this$0).setDuration(500L);
    ExpandedTaskManagerWindow.access$200(this.this$0).setEnabled(false);
    ExpandedTaskManagerWindow.access$100(this.this$0).setAnimationListener(new ExpandedTaskManagerWindow.1.1(this, paramAdapterView, paramInt));
    paramView.startAnimation(ExpandedTaskManagerWindow.access$100(this.this$0));
    nd.a().a(26363);
    ExpandedTaskManagerWindow.access$300(this.this$0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedTaskManagerWindow.1
 * JD-Core Version:    0.6.2
 */