import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.view.privacy.LockPatternView;

final class bgr
  implements Animation.AnimationListener
{
  bgr(bgo parambgo)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.a.getActivity().finish();
    yj.a(bgo.r(this.a), bgo.b(this.a));
    bgo.f(this.a).A(0);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    this.a.a.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgr
 * JD-Core Version:    0.6.2
 */