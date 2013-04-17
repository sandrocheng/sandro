package com.tencent.qqpimsecure.uilib.view;

import QQPIM.CloudInfo;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ViewFlipper;
import com.tencent.qqpimsecure.ui.activity.TransparentActivity;
import com.tencent.qqpimsecure.uilib.model.TipsModel;
import java.util.List;
import qr;

class CloudInfoTips$5
  implements View.OnClickListener
{
  CloudInfoTips$5(CloudInfoTips paramCloudInfoTips)
  {
  }

  public void onClick(View paramView)
  {
    TipsModel localTipsModel = (TipsModel)paramView.getTag();
    String str = localTipsModel.getUrl();
    qr localqr = qr.a(this.this$0.mContext.getApplicationContext());
    CloudInfo localCloudInfo = localqr.b(str);
    if (localCloudInfo != null)
    {
      Intent localIntent = new Intent(this.this$0.mContext, TransparentActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("key_cloud_info", localCloudInfo);
      localIntent.putExtra("key_tips_warning", true);
      this.this$0.mContext.startActivity(localIntent);
    }
    localqr.a(str);
    CloudInfoTips.access$100(this.this$0).remove(localTipsModel);
    CloudInfoTips.access$400(this.this$0).removeView(paramView);
    if (CloudInfoTips.access$100(this.this$0).size() == 0)
      CloudInfoTips.access$200(this.this$0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.CloudInfoTips.5
 * JD-Core Version:    0.6.2
 */