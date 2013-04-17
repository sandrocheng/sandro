package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.tencent.tmsecure.common.TMSApplication;
import hn;
import lx;
import nd;
import qt;

class ConfirmAbandonPrizeDialogView$2
  implements View.OnClickListener
{
  ConfirmAbandonPrizeDialogView$2(ConfirmAbandonPrizeDialogView paramConfirmAbandonPrizeDialogView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26373);
    qt localqt = qt.a(TMSApplication.getApplicaionContext());
    String str = ConfirmAbandonPrizeDialogView.access$000(this.this$0).b;
    localqt.a.b(str, "lottery_color_egg_config", "id");
    ConfirmAbandonPrizeDialogView.access$300().onConfirmFinish();
    WindowManager localWindowManager = (WindowManager)this.val$context.getSystemService("window");
    try
    {
      localWindowManager.removeView(ConfirmAbandonPrizeDialogView.access$400());
      ConfirmAbandonPrizeDialogView.access$402(null);
      label76: return;
    }
    catch (Exception localException)
    {
      break label76;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ConfirmAbandonPrizeDialogView.2
 * JD-Core Version:    0.6.2
 */