package com.tencent.qqpimsecure.ui.activity;

import bki;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class SecureSpaceActivity extends BaseUIActivity
{
  private BaseView a;

  public BaseView getView()
  {
    this.a = new bki(this);
    return this.a;
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SecureSpaceActivity
 * JD-Core Version:    0.6.2
 */