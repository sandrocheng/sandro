import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

final class bqn
  implements Animation.AnimationListener
{
  bqn(bqb parambqb)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    bqb.k(this.a).setVisibility(8);
    bqb.l(this.a).setVisibility(8);
    bqb.f(this.a).setVisibility(0);
    bqb.h(this.a).setVisibility(8);
    bqb.g(this.a).setVisibility(0);
    this.a.a();
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqn
 * JD-Core Version:    0.6.2
 */