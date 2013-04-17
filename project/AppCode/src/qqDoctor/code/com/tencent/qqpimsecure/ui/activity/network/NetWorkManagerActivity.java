package com.tencent.qqpimsecure.ui.activity.network;

import azj;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class NetWorkManagerActivity extends BaseUIActivity
{
  private azj a;

  public BaseView getView()
  {
    if (this.a == null)
      this.a = new azj(this);
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.network.NetWorkManagerActivity
 * JD-Core Version:    0.6.2
 */