package com.tencent.qqpimsecure.ui.activity.market;

import ayp;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class SoftwareSearchActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new ayp(this);
  }

  public void onBackPressed()
  {
    ((ayp)getCurrentView()).j();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.market.SoftwareSearchActivity
 * JD-Core Version:    0.6.2
 */