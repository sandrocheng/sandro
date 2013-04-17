package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import nd;

class LotteryRemindDialogView$2
  implements View.OnClickListener
{
  LotteryRemindDialogView$2(LotteryRemindDialogView paramLotteryRemindDialogView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26371);
    WindowManager localWindowManager = (WindowManager)this.val$context.getSystemService("window");
    try
    {
      ConfirmAbandonPrizeDialogView.showDialog(LotteryRemindDialogView.access$000(this.this$0), LotteryRemindDialogView.access$300(this.this$0), LotteryRemindDialogView.access$400(this.this$0), LotteryRemindDialogView.access$100());
      localWindowManager.removeView(LotteryRemindDialogView.access$200());
      LotteryRemindDialogView.access$202(null);
      label63: return;
    }
    catch (Exception localException)
    {
      break label63;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.LotteryRemindDialogView.2
 * JD-Core Version:    0.6.2
 */