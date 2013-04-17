package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import nd;

class ConfirmAbandonPrizeDialogView$1
  implements View.OnClickListener
{
  ConfirmAbandonPrizeDialogView$1(ConfirmAbandonPrizeDialogView paramConfirmAbandonPrizeDialogView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26372);
    LotteryRemindDialogView.showDialog(ConfirmAbandonPrizeDialogView.access$000(this.this$0), ConfirmAbandonPrizeDialogView.access$100(this.this$0), ConfirmAbandonPrizeDialogView.access$200(this.this$0), ConfirmAbandonPrizeDialogView.access$300());
    ((WindowManager)this.val$context.getSystemService("window")).removeView(ConfirmAbandonPrizeDialogView.access$400());
    ConfirmAbandonPrizeDialogView.access$402(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ConfirmAbandonPrizeDialogView.1
 * JD-Core Version:    0.6.2
 */