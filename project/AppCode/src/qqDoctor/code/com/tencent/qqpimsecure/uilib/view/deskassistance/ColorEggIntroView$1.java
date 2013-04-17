package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.tencent.tmsecure.common.TMSApplication;
import nd;

class ColorEggIntroView$1
  implements View.OnClickListener
{
  ColorEggIntroView$1(ColorEggIntroView paramColorEggIntroView, String paramString, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26369);
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.val$url));
    localIntent.setFlags(268435456);
    TMSApplication.getApplicaionContext().startActivity(localIntent);
    ((WindowManager)this.val$context.getSystemService("window")).removeView(ColorEggIntroView.access$000());
    ColorEggIntroView.access$002(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggIntroView.1
 * JD-Core Version:    0.6.2
 */