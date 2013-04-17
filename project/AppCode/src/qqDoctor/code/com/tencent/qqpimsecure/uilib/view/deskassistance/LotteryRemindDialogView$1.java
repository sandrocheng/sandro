package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.tencent.tmsecure.common.TMSApplication;
import lx;
import nd;
import uf;

class LotteryRemindDialogView$1
  implements View.OnClickListener
{
  LotteryRemindDialogView$1(LotteryRemindDialogView paramLotteryRemindDialogView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26370);
    uf localuf = uf.a(TMSApplication.getApplicaionContext());
    String str = localuf.b(LotteryRemindDialogView.access$000(this.this$0));
    ColorEggGetPrizeConfirmView.showDialog(LotteryRemindDialogView.access$000(this.this$0).b, str, LotteryRemindDialogView.access$100());
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
    localIntent.setFlags(268435456);
    TMSApplication.getApplicaionContext().startActivity(localIntent);
    WindowManager localWindowManager = (WindowManager)this.val$context.getSystemService("window");
    try
    {
      localWindowManager.removeView(LotteryRemindDialogView.access$200());
      label114: LotteryRemindDialogView.access$202(null);
      return;
    }
    catch (Exception localException)
    {
      break label114;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.LotteryRemindDialogView.1
 * JD-Core Version:    0.6.2
 */