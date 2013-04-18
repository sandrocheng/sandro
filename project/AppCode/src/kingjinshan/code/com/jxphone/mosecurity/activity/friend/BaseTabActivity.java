package com.jxphone.mosecurity.activity.friend;

import android.app.TabActivity;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.Button;
import android.widget.TextView;
import com.keniu.security.commui.CustomTabHost;

public class BaseTabActivity extends TabActivity
{
  public static int a = 0;
  public static Button d;
  private static final int e = 120;
  private static final int f = 250;
  private static final int g = 200;
  protected int b;
  protected CustomTabHost c;
  private GestureDetector h;

  private void a(Integer paramInteger1, Integer paramInteger2)
  {
    if ((paramInteger1 != null) && (paramInteger1.intValue() != 0))
      ((TextView)findViewById(2131230727)).setText(paramInteger1.intValue());
    if ((paramInteger2 != null) && (paramInteger2.intValue() != 0))
    {
      d.setVisibility(0);
      d.setText(paramInteger2.intValue());
    }
    while (true)
    {
      return;
      d.setVisibility(8);
    }
  }

  protected void a()
  {
    a = 0;
    this.b = 2;
    this.c = ((CustomTabHost)getTabHost());
  }

  protected void a(int paramInt)
  {
    this.c.setCurrentTab(a);
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.h.onTouchEvent(paramMotionEvent))
      paramMotionEvent.setAction(3);
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
    this.h = new GestureDetector(new a(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.BaseTabActivity
 * JD-Core Version:    0.6.2
 */