package com.antivirus.ui.tablet;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import com.avg.toolkit.e.a;
import com.avg.ui.general.o;
import com.avg.ui.general.r;

class h
  implements View.OnTouchListener
{
  h(DualPaneActivity paramDualPaneActivity, String paramString, ImageView paramImageView, int paramInt)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (DualPaneActivity.b(this.d, this.a))
    {
      this.b.setClickable(true);
      this.b.setOnTouchListener(null);
    }
    while (true)
    {
      return true;
      if (paramMotionEvent.getAction() == 0)
      {
        if (DualPaneActivity.d(this.d).b())
          this.b.setImageResource(o.a(r.c));
        else
          this.b.setImageResource(o.b(r.c));
      }
      else if (paramMotionEvent.getAction() == 1)
      {
        this.b.setImageResource(this.c);
        this.b.setOnTouchListener(null);
        this.d.i();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.tablet.h
 * JD-Core Version:    0.6.2
 */