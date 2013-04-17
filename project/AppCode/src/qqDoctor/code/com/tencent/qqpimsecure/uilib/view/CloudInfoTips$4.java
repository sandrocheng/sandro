package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ViewFlipper;
import java.util.List;
import qr;

class CloudInfoTips$4
  implements View.OnClickListener
{
  CloudInfoTips$4(CloudInfoTips paramCloudInfoTips)
  {
  }

  public void onClick(View paramView)
  {
    CloudInfoTips.access$100(this.this$0).remove(paramView.getTag());
    CloudInfoTips.access$400(this.this$0).removeView(paramView);
    if (CloudInfoTips.access$100(this.this$0).size() == 0)
      CloudInfoTips.access$200(this.this$0);
    qr.a(this.this$0.mContext.getApplicationContext()).d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.CloudInfoTips.4
 * JD-Core Version:    0.6.2
 */