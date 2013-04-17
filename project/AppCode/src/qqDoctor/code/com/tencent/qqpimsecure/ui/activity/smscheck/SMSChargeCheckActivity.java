package com.tencent.qqpimsecure.ui.activity.smscheck;

import android.os.Bundle;
import android.view.MotionEvent;
import android.widget.TabHost.OnTabChangeListener;
import bkn;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class SMSChargeCheckActivity extends BaseUIActivity
  implements TabHost.OnTabChangeListener
{
  private bkn a;

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  public BaseView getView()
  {
    this.a = new bkn(this);
    return this.a;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public void onTabChanged(String paramString)
  {
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.smscheck.SMSChargeCheckActivity
 * JD-Core Version:    0.6.2
 */