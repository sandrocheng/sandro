package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import hn;
import nd;
import qt;

class ColorEggGetPrizeConfirmView$2
  implements View.OnClickListener
{
  ColorEggGetPrizeConfirmView$2(ColorEggGetPrizeConfirmView paramColorEggGetPrizeConfirmView, String paramString, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26374);
    ColorEggGetPrizeConfirmView.access$300().onConfirmFinish();
    qt localqt = qt.a(ColorEggGetPrizeConfirmView.access$400(this.this$0));
    String str = this.val$activityId;
    localqt.a.b(str, "lottery_color_egg_config", "id");
    WindowManager localWindowManager = (WindowManager)this.val$context.getSystemService("window");
    ColorEggGetPrizeConfirmView.access$500(this.this$0);
    localWindowManager.removeView(ColorEggGetPrizeConfirmView.access$200());
    ColorEggGetPrizeConfirmView.access$202(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggGetPrizeConfirmView.2
 * JD-Core Version:    0.6.2
 */