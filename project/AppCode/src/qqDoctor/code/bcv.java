import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

final class bcv
  implements Animation.AnimationListener
{
  bcv(bcu parambcu, AlphaAnimation paramAlphaAnimation)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
    bcu.a(this.b).startAnimation(this.a);
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    bcu.a(this.b).startAnimation(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcv
 * JD-Core Version:    0.6.2
 */