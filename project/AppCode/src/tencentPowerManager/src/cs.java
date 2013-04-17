import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.tencent.powermanager.ui.QQPowerManagerActivity;
import com.tencent.powermanager.uilib.view.BaseTabView;
import java.util.List;

public final class cs
  implements ViewPager.OnPageChangeListener
{
  public cs(QQPowerManagerActivity paramQQPowerManagerActivity)
  {
  }

  public final void onPageScrollStateChanged(int paramInt)
  {
  }

  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public final void onPageSelected(int paramInt)
  {
    ((BaseTabView)QQPowerManagerActivity.b(this.a).get(QQPowerManagerActivity.c(this.a))).h();
    QQPowerManagerActivity.a(this.a, paramInt);
    ((BaseTabView)QQPowerManagerActivity.b(this.a).get(paramInt)).e();
    QQPowerManagerActivity.b(this.a, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cs
 * JD-Core Version:    0.6.2
 */