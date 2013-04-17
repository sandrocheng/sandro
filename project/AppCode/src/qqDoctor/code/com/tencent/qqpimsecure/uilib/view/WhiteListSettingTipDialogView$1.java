package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.tencent.qqpimsecure.ui.activity.systemoptimize.UserWhiteListActivity;
import nd;

class WhiteListSettingTipDialogView$1
  implements View.OnClickListener
{
  WhiteListSettingTipDialogView$1(WhiteListSettingTipDialogView paramWhiteListSettingTipDialogView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26241);
    Context localContext = this.val$context;
    Intent localIntent = new Intent(localContext, UserWhiteListActivity.class);
    localIntent.putExtra("extra_back_to_main", true);
    localIntent.addFlags(268435456);
    localContext.startActivity(localIntent);
    try
    {
      ((WindowManager)this.val$context.getSystemService("window")).removeView(WhiteListSettingTipDialogView.access$000());
      label65: WhiteListSettingTipDialogView.access$002(null);
      return;
    }
    catch (Exception localException)
    {
      break label65;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.WhiteListSettingTipDialogView.1
 * JD-Core Version:    0.6.2
 */