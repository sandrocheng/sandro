package com.tencent.qqpimsecure.ui.activity.privacy;

import bgy;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class PrivacyPswGuideActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new bgy(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPswGuideActivity
 * JD-Core Version:    0.6.2
 */