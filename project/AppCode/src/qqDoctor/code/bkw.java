import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;

final class bkw
  implements Animation.AnimationListener
{
  bkw(bkn parambkn)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (bkn.q(this.a))
    {
      if (paramAnimation != bkn.r(this.a))
        break label39;
      bkn.t(this.a).startAnimation(bkn.s(this.a));
    }
    while (true)
    {
      return;
      label39: if (paramAnimation == bkn.s(this.a))
        bkn.t(this.a).startAnimation(bkn.u(this.a));
      else if (paramAnimation == bkn.u(this.a))
        bkn.t(this.a).startAnimation(bkn.r(this.a));
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
 * Qualified Name:     bkw
 * JD-Core Version:    0.6.2
 */