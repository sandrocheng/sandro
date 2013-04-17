package com.tencent.qqpimsecure.ui.activity.market;

import android.os.Bundle;
import axj;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import is;

public class MarketActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new axj(this);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    is.a(QQPimApplication.a());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.market.MarketActivity
 * JD-Core Version:    0.6.2
 */