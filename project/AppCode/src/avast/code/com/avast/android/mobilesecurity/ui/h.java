package com.avast.android.mobilesecurity.ui;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

class h
  implements Runnable
{
  h(g paramg, ViewGroup paramViewGroup)
  {
  }

  public void run()
  {
    g.d(this.b, Math.min(g.i(this.b), g.f(this.b).getWidth() - g.g(this.b)));
    g.e(this.b, g.f(this.b).getWidth() - g.i(this.b));
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1, 0);
    localLayoutParams.rightMargin = g.g(this.b);
    if (!(this.a.getParent() instanceof ViewGroup))
    {
      Rect localRect = new Rect();
      g.j(this.b).getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
      localLayoutParams.topMargin = localRect.top;
    }
    g.b(this.b).setLayoutParams(localLayoutParams);
    g.b(this.b).setVisibility(4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.h
 * JD-Core Version:    0.6.2
 */