package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import nd;

class ColorEggIntroView$2
  implements View.OnClickListener
{
  ColorEggIntroView$2(ColorEggIntroView paramColorEggIntroView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd.a().a(26368);
    WindowManager localWindowManager = (WindowManager)this.val$context.getSystemService("window");
    try
    {
      localWindowManager.removeView(ColorEggIntroView.access$000());
      ColorEggIntroView.access$002(null);
      label36: return;
    }
    catch (Exception localException)
    {
      break label36;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggIntroView.2
 * JD-Core Version:    0.6.2
 */