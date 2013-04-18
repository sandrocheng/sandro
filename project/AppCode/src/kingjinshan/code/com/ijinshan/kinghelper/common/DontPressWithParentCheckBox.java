package com.ijinshan.kinghelper.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;

public class DontPressWithParentCheckBox extends CheckBox
{
  private DontPressWithParentCheckBox(Context paramContext)
  {
    super(paramContext);
  }

  public DontPressWithParentCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public DontPressWithParentCheckBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
  }

  public void setPressed(boolean paramBoolean)
  {
    if ((paramBoolean) && (((View)getParent()).isPressed()));
    while (true)
    {
      return;
      super.setPressed(paramBoolean);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.DontPressWithParentCheckBox
 * JD-Core Version:    0.6.2
 */