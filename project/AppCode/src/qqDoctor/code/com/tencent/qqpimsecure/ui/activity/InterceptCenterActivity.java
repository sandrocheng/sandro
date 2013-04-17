package com.tencent.qqpimsecure.ui.activity;

import android.os.Bundle;
import awg;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import so;

public class InterceptCenterActivity extends BaseUIActivity
{
  private BaseView a;
  private so b;

  public BaseView getView()
  {
    this.a = new awg(this);
    return this.a;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = so.a();
    this.b.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.InterceptCenterActivity
 * JD-Core Version:    0.6.2
 */