import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class aks
  implements Animation.AnimationListener
{
  aks(akp paramakp, View paramView, mf parammf)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.a.setVisibility(8);
    akp.d(this.c);
    this.a.clearAnimation();
    if ((akp.e(this.c) instanceof bhx))
      ((bhx)akp.e(this.c)).a(this.b);
    while (true)
    {
      return;
      if ((akp.e(this.c) instanceof bhy))
        ((bhy)akp.e(this.c)).a(this.b);
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
 * Qualified Name:     aks
 * JD-Core Version:    0.6.2
 */