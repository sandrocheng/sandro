package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import nd;

class WhiteListSettingTipDialogView$2
  implements View.OnClickListener
{
  WhiteListSettingTipDialogView$2(WhiteListSettingTipDialogView paramWhiteListSettingTipDialogView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    WindowManager localWindowManager = (WindowManager)this.val$context.getSystemService("window");
    try
    {
      nd.a().a(26242);
      localWindowManager.removeView(WhiteListSettingTipDialogView.access$000());
      WhiteListSettingTipDialogView.access$002(null);
      label36: return;
    }
    catch (Exception localException)
    {
      break label36;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.WhiteListSettingTipDialogView.2
 * JD-Core Version:    0.6.2
 */