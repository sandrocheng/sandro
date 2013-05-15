package com.viewpagerindicator;

import android.content.Context;
import android.view.View.MeasureSpec;
import android.widget.TextView;

class e extends TextView
{
  private int b;

  public e(TabPageIndicator paramTabPageIndicator, Context paramContext)
  {
    super(paramContext, null, 2130772103);
  }

  public int a()
  {
    return this.b;
  }

  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((TabPageIndicator.c(this.a) > 0) && (getMeasuredWidth() > TabPageIndicator.c(this.a)))
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageIndicator.c(this.a), 1073741824), paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.viewpagerindicator.e
 * JD-Core Version:    0.6.2
 */