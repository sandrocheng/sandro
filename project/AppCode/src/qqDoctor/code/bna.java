import android.content.Context;
import android.content.res.Resources;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.TextView;

final class bna
  implements Animation.AnimationListener
{
  bna(bmp parambmp)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (bmp.F(this.a))
    {
      bmp.H(this.a).setVisibility(8);
      bmp.I(this.a).setText(2131429533);
      bmp.I(this.a).setTextColor(bmp.J(this.a).getResources().getColor(2131296403));
      bmp.I(this.a).setTextSize(14.0F);
      bmp.K(this.a).setVisibility(8);
      bmp.L(this.a);
    }
    while (true)
    {
      return;
      bmp.M(this.a);
      bmp.K(this.a).setText(bmp.N(this.a));
      bmp.K(this.a).setVisibility(0);
      bmp.L(this.a);
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
 * Qualified Name:     bna
 * JD-Core Version:    0.6.2
 */