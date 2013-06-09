package android.support.v4.app;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class m
  implements Animation.AnimationListener
{
  m(k paramk, Fragment paramFragment)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (this.a.b != null)
    {
      this.a.b = null;
      this.b.a(this.a, this.a.c, 0, 0);
    }
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.m
 * JD-Core Version:    0.6.2
 */