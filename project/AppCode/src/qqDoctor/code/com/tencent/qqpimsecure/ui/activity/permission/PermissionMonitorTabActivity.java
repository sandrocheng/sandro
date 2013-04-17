package com.tencent.qqpimsecure.ui.activity.permission;

import bdq;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class PermissionMonitorTabActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new bdq(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.permission.PermissionMonitorTabActivity
 * JD-Core Version:    0.6.2
 */