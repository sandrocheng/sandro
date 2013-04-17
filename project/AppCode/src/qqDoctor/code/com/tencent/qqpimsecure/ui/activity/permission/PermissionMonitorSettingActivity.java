package com.tencent.qqpimsecure.ui.activity.permission;

import bdk;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class PermissionMonitorSettingActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new bdk(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.permission.PermissionMonitorSettingActivity
 * JD-Core Version:    0.6.2
 */