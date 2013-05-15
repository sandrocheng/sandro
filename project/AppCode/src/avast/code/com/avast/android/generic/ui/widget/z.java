package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.TouchDelegate;
import android.widget.CompoundButton;
import com.avast.android.generic.r;

class z
  implements Runnable
{
  z(SwitchRow paramSwitchRow)
  {
  }

  public void run()
  {
    Rect localRect = new Rect();
    SwitchRow.a(this.a).getHitRect(localRect);
    int i = this.a.getContext().getResources().getDimensionPixelSize(r.a);
    int j = this.a.getContext().getResources().getDimensionPixelSize(r.b);
    localRect.top -= j;
    localRect.bottom = (j + localRect.bottom);
    localRect.left -= i;
    localRect.right = (i + localRect.right);
    this.a.setTouchDelegate(new TouchDelegate(localRect, SwitchRow.a(this.a)));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.z
 * JD-Core Version:    0.6.2
 */