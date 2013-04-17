import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

final class bmu
  implements Animation.AnimationListener
{
  bmu(bmp parambmp)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    bmp.d(this.a).setEnabled(true);
    bmp.e(this.a).setVisibility(8);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    bmp.a(this.a).setVisibility(8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmu
 * JD-Core Version:    0.6.2
 */