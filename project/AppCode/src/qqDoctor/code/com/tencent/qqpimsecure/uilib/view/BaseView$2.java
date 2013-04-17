package com.tencent.qqpimsecure.uilib.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;

class BaseView$2
  implements View.OnClickListener
{
  BaseView$2(BaseView paramBaseView)
  {
  }

  public void onClick(View paramView)
  {
    this.this$0.onOperatingBarClick((OperatingModel)paramView.getTag());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BaseView.2
 * JD-Core Version:    0.6.2
 */