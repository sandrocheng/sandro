package com.tencent.qqpimsecure.ui.activity.faceverify;

import ari;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class AddUserInfoActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new ari(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.faceverify.AddUserInfoActivity
 * JD-Core Version:    0.6.2
 */