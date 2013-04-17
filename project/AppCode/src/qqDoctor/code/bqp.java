import android.content.Context;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView.onAnimationFinishListener;
import com.tencent.qqpimsecure.uilib.view.WhiteListSettingTipDialogView;
import java.util.List;

final class bqp extends ProgressBarView.onAnimationFinishListener
{
  bqp(bqo parambqo)
  {
  }

  public final void onAnimationFinish()
  {
    bqb.i(this.a.a).stopAnimation();
    if (!bqb.v(this.a.a))
    {
      bqb.h(this.a.a).setVisibility(8);
      bqb.g(this.a.a).setVisibility(0);
      bqb.g(this.a.a).setText(bqb.w(this.a.a).getString(2131429729));
      bqb.x(this.a.a);
      if (bqb.m(this.a.a).size() <= 0)
        bqb.z(this.a.a).setText(bqb.y(this.a.a).getString(2131429747));
      bqb.A(this.a.a);
      bqb.a(this.a.a, false);
      if (!ho.a().cJ())
        WhiteListSettingTipDialogView.showDialog();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqp
 * JD-Core Version:    0.6.2
 */