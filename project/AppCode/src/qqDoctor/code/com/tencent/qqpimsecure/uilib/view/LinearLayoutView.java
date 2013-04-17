package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class LinearLayoutView extends LinearLayout
{
  private boolean mDispatch = false;

  public LinearLayoutView(Context paramContext)
  {
    super(paramContext);
  }

  public LinearLayoutView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void dispatchSetPressed(boolean paramBoolean)
  {
    if (this.mDispatch)
      super.dispatchSetPressed(paramBoolean);
  }

  public void dispatchSetSelected(boolean paramBoolean)
  {
    if (this.mDispatch)
      super.dispatchSetSelected(paramBoolean);
  }

  public boolean isDispatch()
  {
    return this.mDispatch;
  }

  public void setDispatch(boolean paramBoolean)
  {
    this.mDispatch = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.LinearLayoutView
 * JD-Core Version:    0.6.2
 */