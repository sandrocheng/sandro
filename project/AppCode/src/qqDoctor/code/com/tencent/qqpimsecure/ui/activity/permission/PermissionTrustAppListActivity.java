package com.tencent.qqpimsecure.ui.activity.permission;

import bed;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class PermissionTrustAppListActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new bed(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.permission.PermissionTrustAppListActivity
 * JD-Core Version:    0.6.2
 */