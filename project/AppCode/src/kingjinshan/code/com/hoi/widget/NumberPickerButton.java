package com.hoi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.ImageButton;

public class NumberPickerButton extends ImageButton
{
  private NumberPicker a;

  private NumberPickerButton(Context paramContext)
  {
    super(paramContext);
  }

  public NumberPickerButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public NumberPickerButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a()
  {
    if (2131231062 == getId())
      this.a.b();
    while (true)
    {
      return;
      if (2131231063 == getId())
        this.a.c();
    }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 3) || (paramMotionEvent.getAction() == 1))
      a();
  }

  public final void a(NumberPicker paramNumberPicker)
  {
    this.a = paramNumberPicker;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 23) || (paramInt == 66))
      a();
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    a(paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }

  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    a(paramMotionEvent);
    return super.onTrackballEvent(paramMotionEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.NumberPickerButton
 * JD-Core Version:    0.6.2
 */