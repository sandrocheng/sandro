import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

final class bex
  implements Animation.AnimationListener
{
  bex(bew parambew)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    bew localbew = this.a;
    boolean bool;
    if (!bew.a(this.a))
    {
      bool = true;
      bew.a(localbew, bool);
      if (!bew.a(this.a))
        break label56;
      bew.c(this.a).startAnimation(bew.b(this.a));
    }
    while (true)
    {
      return;
      bool = false;
      break;
      label56: bew.c(this.a).startAnimation(bew.d(this.a));
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
 * Qualified Name:     bex
 * JD-Core Version:    0.6.2
 */