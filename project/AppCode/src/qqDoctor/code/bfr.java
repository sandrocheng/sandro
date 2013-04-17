import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

final class bfr
  implements Animation.AnimationListener
{
  bfr(bfq parambfq)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    bfq localbfq = this.a;
    boolean bool;
    if (!bfq.a(this.a))
    {
      bool = true;
      bfq.a(localbfq, bool);
      if (!bfq.a(this.a))
        break label56;
      bfq.c(this.a).startAnimation(bfq.b(this.a));
    }
    while (true)
    {
      return;
      bool = false;
      break;
      label56: bfq.c(this.a).startAnimation(bfq.d(this.a));
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
 * Qualified Name:     bfr
 * JD-Core Version:    0.6.2
 */