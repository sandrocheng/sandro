package com.ijinshan.kinghelper.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

public class DontPressWithParentImageView extends ImageView
{
  public DontPressWithParentImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
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
 * Qualified Name:     com.ijinshan.kinghelper.common.DontPressWithParentImageView
 * JD-Core Version:    0.6.2
 */