package com.tencent.qqpimsecure.ui.activity.network;

import bbo;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class TrafficFilterAndRankActivity extends BaseUIActivity
{
  private BaseView a;

  public BaseView getView()
  {
    this.a = new bbo(this);
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.network.TrafficFilterAndRankActivity
 * JD-Core Version:    0.6.2
 */