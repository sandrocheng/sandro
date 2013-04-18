package com.keniu.security.main;

import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class ay
  implements Animation.AnimationListener
{
  ay(MainActivity paramMainActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    MainActivity.w(this.a).post(new bl(this.a));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ay
 * JD-Core Version:    0.6.2
 */