package com.tencent.qqpimsecure.ui.activity.privacy;

import bhc;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class PrivacySafeActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new bhc(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.privacy.PrivacySafeActivity
 * JD-Core Version:    0.6.2
 */