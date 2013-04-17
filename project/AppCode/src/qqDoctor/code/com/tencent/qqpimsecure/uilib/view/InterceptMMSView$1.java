package com.tencent.qqpimsecure.uilib.view;

import adg;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.MMSImageAcitivty;
import java.io.File;

class InterceptMMSView$1
  implements View.OnClickListener
{
  InterceptMMSView$1(InterceptMMSView paramInterceptMMSView, adg paramadg)
  {
  }

  public void onClick(View paramView)
  {
    if ((this.val$smilcomponent.b() != 0) && (new File(this.val$smilcomponent.e()).exists()))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(InterceptMMSView.access$000(this.this$0), MMSImageAcitivty.class);
      localIntent.putExtra("SMILComponent", this.val$smilcomponent);
      localIntent.putExtra("form", 2);
      InterceptMMSView.access$000(this.this$0).startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.InterceptMMSView.1
 * JD-Core Version:    0.6.2
 */