import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.tencent.powermanager.uilib.CheckBoxView;

public final class cx
  implements Animation.AnimationListener
{
  public cx(CheckBoxView paramCheckBoxView)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    CheckBoxView.a(false);
    CheckBoxView.a(this.a, CheckBoxView.a(this.a), CheckBoxView.b(this.a));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
    CheckBoxView.a(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cx
 * JD-Core Version:    0.6.2
 */