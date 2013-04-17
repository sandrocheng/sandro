import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

final class uy
  implements Animation.AnimationListener
{
  private boolean a;

  uy(uo paramuo)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (!this.a)
    {
      uo.m(this.b).clearAnimation();
      Animation localAnimation = AnimationUtils.loadAnimation(uo.n(this.b), 2130968579);
      uo.m(this.b).startAnimation(localAnimation);
      this.a = true;
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
 * Qualified Name:     uy
 * JD-Core Version:    0.6.2
 */