import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class alq
  implements Animation.AnimationListener
{
  alq(all paramall, View paramView, kw paramkw)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    all.f(this.c);
    this.a.setVisibility(8);
    this.a.clearAnimation();
    if ((all.e(this.c) instanceof bnr))
      ((bnr)all.e(this.c)).a(this.b);
    while (true)
    {
      return;
      ((bns)all.e(this.c)).a(this.b);
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
 * Qualified Name:     alq
 * JD-Core Version:    0.6.2
 */