import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.TextView;

final class bqe
  implements Animation.AnimationListener
{
  bqe(bqb parambqb)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (bqb.F(this.a))
    {
      bqb.G(this.a).setVisibility(8);
      bqb.H(this.a).setVisibility(8);
      this.a.findViewById(2131231267).setVisibility(8);
      bqb.I(this.a).setText(2131429728);
    }
    while (true)
    {
      bqb.K(this.a);
      return;
      if (!bqb.v(this.a))
        bqb.x(this.a);
      else
        bqb.J(this.a);
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
 * Qualified Name:     bqe
 * JD-Core Version:    0.6.2
 */