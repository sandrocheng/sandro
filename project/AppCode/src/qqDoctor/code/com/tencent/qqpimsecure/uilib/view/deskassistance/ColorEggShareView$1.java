package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.tencent.qqpimsecure.ui.activity.ShareActivity;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import ho;
import nd;

class ColorEggShareView$1
  implements View.OnClickListener
{
  ColorEggShareView$1(ColorEggShareView paramColorEggShareView, String paramString, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    nd localnd = nd.a();
    localnd.a(26365);
    if (ColorEggShareView.access$000(this.this$0).getChecked())
    {
      ho.a().du();
      localnd.a(26367);
    }
    Intent localIntent = new Intent(ColorEggShareView.access$100(this.this$0), ShareActivity.class);
    localIntent.putExtra("default_content", this.val$shareWording);
    localIntent.putExtra("from_where", 3);
    localIntent.setFlags(268435456);
    ColorEggShareView.access$100(this.this$0).startActivity(localIntent);
    ((WindowManager)this.val$context.getSystemService("window")).removeView(ColorEggShareView.access$200());
    ColorEggShareView.access$202(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggShareView.1
 * JD-Core Version:    0.6.2
 */