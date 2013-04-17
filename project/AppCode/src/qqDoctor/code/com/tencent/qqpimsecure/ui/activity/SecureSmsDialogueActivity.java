package com.tencent.qqpimsecure.ui.activity;

import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;

public class SecureSmsDialogueActivity extends BaseUIActivity
{
  private BaseView a;

  public BaseView getView()
  {
    this.a = new SecureSmsDialogueView(this);
    return this.a;
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SecureSmsDialogueActivity
 * JD-Core Version:    0.6.2
 */