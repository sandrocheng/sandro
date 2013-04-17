package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.tmsecure.common.TMSApplication;
import nd;

class ColorEggGetPrizeConfirmView$3
  implements View.OnClickListener
{
  ColorEggGetPrizeConfirmView$3(ColorEggGetPrizeConfirmView paramColorEggGetPrizeConfirmView, String paramString)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26375);
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.val$url));
    localIntent.setFlags(268435456);
    TMSApplication.getApplicaionContext().startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggGetPrizeConfirmView.3
 * JD-Core Version:    0.6.2
 */