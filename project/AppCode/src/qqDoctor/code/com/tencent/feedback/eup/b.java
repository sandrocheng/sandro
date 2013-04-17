package com.tencent.feedback.eup;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.feedback.common.ELog;

final class b
  implements View.OnClickListener
{
  b(ConfirmDialog paramConfirmDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView != null)
      paramView.setClickable(false);
    if (ConfirmDialog.access$000(this.a) != null)
    {
      ELog.info("set contract to default");
      ExceptionUpload.setDefaultContract(ConfirmDialog.access$000(this.a).getUploadContent());
    }
    com.tencent.feedback.common.c.a().a(new c(this));
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.b
 * JD-Core Version:    0.6.2
 */