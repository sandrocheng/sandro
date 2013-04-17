import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;

final class bqk
  implements Animation.AnimationListener
{
  bqk(bqb parambqb)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    bqb.d(this.a).setVisibility(0);
    bqb.e(this.a).setVisibility(8);
    bqb.f(this.a).setVisibility(8);
    bqb.g(this.a).setVisibility(8);
    bqb.h(this.a).setVisibility(0);
    bqb.i(this.a).setProgress(0);
    bqb.j(this.a);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqk
 * JD-Core Version:    0.6.2
 */