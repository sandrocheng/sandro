package com.keniu.security.main;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.SlidingDrawer;

final class az
  implements Animation.AnimationListener
{
  az(MainActivity paramMainActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (MainActivity.x(this.a) == 1)
    {
      MainActivity.C(this.a).setVisibility(0);
      MainActivity.D(this.a).setEnabled(true);
      MainActivity.E(this.a).setEnabled(true);
      bn.a().b();
      MainActivity.o(this.a);
    }
    while (true)
    {
      return;
      this.a.g();
      if (MainActivity.i(this.a) != null)
      {
        if (MainActivity.i(this.a).isShowing())
          MainActivity.i(this.a).dismiss();
        MainActivity.a(this.a, null);
      }
    }
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.az
 * JD-Core Version:    0.6.2
 */