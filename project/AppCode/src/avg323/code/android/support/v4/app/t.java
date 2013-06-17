package android.support.v4.app;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class t
  implements Animation.AnimationListener
{
  t(q paramq, Fragment paramFragment)
  {
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    if (this.a.k != null)
    {
      this.a.k = null;
      this.b.a(this.a, this.a.l, 0, 0, false);
    }
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.t
 * JD-Core Version:    0.6.2
 */