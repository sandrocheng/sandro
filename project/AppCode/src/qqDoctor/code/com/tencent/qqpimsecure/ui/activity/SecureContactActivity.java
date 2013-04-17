package com.tencent.qqpimsecure.ui.activity;

import big;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class SecureContactActivity extends BaseUIActivity
{
  private BaseView a;

  public BaseView getView()
  {
    this.a = new big(this);
    return this.a;
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SecureContactActivity
 * JD-Core Version:    0.6.2
 */