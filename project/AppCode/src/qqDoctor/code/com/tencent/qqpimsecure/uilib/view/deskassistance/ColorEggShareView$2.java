package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import ho;
import nd;

class ColorEggShareView$2
  implements View.OnClickListener
{
  ColorEggShareView$2(ColorEggShareView paramColorEggShareView, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd localnd = nd.a();
    localnd.a(26366);
    if (ColorEggShareView.access$000(this.this$0).getChecked())
    {
      ho.a().du();
      localnd.a(26367);
    }
    WindowManager localWindowManager = (WindowManager)this.val$context.getSystemService("window");
    try
    {
      localWindowManager.removeView(ColorEggShareView.access$200());
      ColorEggShareView.access$202(null);
      label64: return;
    }
    catch (Exception localException)
    {
      break label64;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggShareView.2
 * JD-Core Version:    0.6.2
 */