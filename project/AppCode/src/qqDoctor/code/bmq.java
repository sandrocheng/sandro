import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout;

final class bmq
  implements Animation.AnimationListener
{
  bmq(bmp parambmp)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    bmp.b(this.a).setVisibility(8);
    bmp.c(this.a);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    bmp.a(this.a).setVisibility(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmq
 * JD-Core Version:    0.6.2
 */