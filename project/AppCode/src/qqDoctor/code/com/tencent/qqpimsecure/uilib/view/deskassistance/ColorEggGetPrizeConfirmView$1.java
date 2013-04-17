package com.tencent.qqpimsecure.uilib.view.deskassistance;

import abv.b;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.tencent.tmsecure.common.TMSApplication;
import kg;
import zo;

class ColorEggGetPrizeConfirmView$1
  implements abv.b
{
  ColorEggGetPrizeConfirmView$1(ColorEggGetPrizeConfirmView paramColorEggGetPrizeConfirmView)
  {
  }

  public void currentApp(ActivityManager.RunningTaskInfo paramRunningTaskInfo)
  {
    ColorEggGetPrizeConfirmView.access$002(this.this$0, ColorEggGetPrizeConfirmView.access$100(this.this$0).a(paramRunningTaskInfo.topActivity));
    if (ColorEggGetPrizeConfirmView.access$000(this.this$0))
    {
      this.this$0.mMainLayout.setVisibility(0);
      ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).updateViewLayout(ColorEggGetPrizeConfirmView.access$200(), kg.f);
    }
    while (true)
    {
      return;
      this.this$0.mMainLayout.setVisibility(8);
      ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).updateViewLayout(ColorEggGetPrizeConfirmView.access$200(), kg.e);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggGetPrizeConfirmView.1
 * JD-Core Version:    0.6.2
 */