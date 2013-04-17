package com.tencent.qqpimsecure.ui.activity.network;

import android.os.Bundle;
import azu;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class NetWorkManageSettingActivity extends BaseUIActivity
{
  public static NetWorkManageSettingActivity a;
  private azu b;

  public BaseView getView()
  {
    if (this.b == null)
      this.b = new azu(this);
    return this.b;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = this;
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.network.NetWorkManageSettingActivity
 * JD-Core Version:    0.6.2
 */