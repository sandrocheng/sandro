package com.avast.android.mobilesecurity.ui;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Scroller;

class l extends FrameLayout
{
  private l(g paramg, Context paramContext)
  {
    super(paramContext);
  }

  public void computeScroll()
  {
    if (g.a(this.a).computeScrollOffset())
    {
      scrollTo(g.a(this.a).getCurrX(), g.a(this.a).getCurrY());
      invalidate();
    }
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 == 0) && (g.b(this.a).getVisibility() == 0))
      g.b(this.a).setVisibility(4);
    while (true)
    {
      return;
      if ((paramInt1 != 0) && (g.b(this.a).getVisibility() == 4))
        g.b(this.a).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.l
 * JD-Core Version:    0.6.2
 */