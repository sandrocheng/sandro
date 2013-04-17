package com.tencent.qqpimsecure.ui.activity.faceverify;

import android.view.MotionEvent;
import arn;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class CameraCaptureActivity extends BaseUIActivity
{
  private arn a;

  public BaseView getView()
  {
    this.a = new arn(this);
    return this.a;
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.a.a();
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.faceverify.CameraCaptureActivity
 * JD-Core Version:    0.6.2
 */