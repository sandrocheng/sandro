package com.tencent.qqpimsecure.ui.activity.permission;

import android.view.MotionEvent;
import bcu;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class PermissionControlActivity extends BaseUIActivity
{
  private bcu a;

  public BaseView getView()
  {
    this.a = new bcu(this);
    return this.a;
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    bcu.a();
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.permission.PermissionControlActivity
 * JD-Core Version:    0.6.2
 */