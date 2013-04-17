package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.MiniProgressBarView;
import com.tencent.qqpimsecure.uilib.view.WhiteListSettingTipDialogView;
import ho;
import vh;
import zk.b;

class ExpandedOptimizeWindow$1
  implements zk.b
{
  ExpandedOptimizeWindow$1(ExpandedOptimizeWindow paramExpandedOptimizeWindow)
  {
  }

  public void BestNow()
  {
    ExpandedOptimizeWindow.access$500(this.this$0).setText(ExpandedOptimizeWindow.access$400(this.this$0).getString(2131429672));
    ExpandedOptimizeWindow.access$500(this.this$0).setVisibility(8);
    ExpandedOptimizeWindow.access$600(this.this$0).setVisibility(0);
    ExpandedOptimizeWindow.access$600(this.this$0).setText(ExpandedOptimizeWindow.access$400(this.this$0).getString(2131429690));
    ExpandedOptimizeWindow.access$700(this.this$0).setProgressWithAnim(vh.g(), null);
    ExpandedOptimizeWindow.access$102(this.this$0, true);
    if (!ho.a().cJ())
      WhiteListSettingTipDialogView.showDialog();
  }

  public void CleanEstimateComplete(int paramInt, long paramLong)
  {
    if ((paramInt <= 0) || (paramLong <= 0L));
    while (true)
    {
      return;
      ExpandedOptimizeWindow.access$002(this.this$0, paramLong);
      ExpandedOptimizeWindow.access$102(this.this$0, true);
    }
  }

  public void CleanFinish()
  {
    ExpandedOptimizeWindow.access$202(this.this$0, true);
    if (ExpandedOptimizeWindow.access$300(this.this$0) != null)
      ExpandedOptimizeWindow.access$300(this.this$0).onOptimizeFinish();
    if (!ho.a().cJ())
      WhiteListSettingTipDialogView.showDialog();
  }

  public boolean isReadyToCleanNow()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedOptimizeWindow.1
 * JD-Core Version:    0.6.2
 */