package com.tencent.qqpimsecure.ui.activity;

import android.content.Intent;
import atz;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class InterceptBlackWhiteActivity extends BaseUIActivity
{
  private BaseView a;

  public BaseView getView()
  {
    this.a = new atz(this, getIntent().getIntExtra("CONTACT_TYPE", 0));
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.InterceptBlackWhiteActivity
 * JD-Core Version:    0.6.2
 */