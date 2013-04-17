import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class brr
  implements Animation.AnimationListener
{
  brr(brp parambrp, boolean paramBoolean)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    brp.ad(this.b);
    if (this.a)
    {
      brp.ae(this.b);
      brp.af(this.b);
      brp.ag(this.b);
      brp.ah(this.b);
    }
    while (true)
    {
      return;
      brp.R(this.b).d();
      brp.D(this.b).removeMessages(9);
      brp.D(this.b).sendEmptyMessage(9);
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
 * Qualified Name:     brr
 * JD-Core Version:    0.6.2
 */