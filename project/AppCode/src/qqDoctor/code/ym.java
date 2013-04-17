import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.service.PrivacySafeSuspensionWindow;
import com.tencent.qqpimsecure.service.PrivacySafeSuspensionWindow.PrivacySafeSuspensionView;

public final class ym
  implements View.OnClickListener
{
  public ym(PrivacySafeSuspensionWindow.PrivacySafeSuspensionView paramPrivacySafeSuspensionView)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.g.sendEmptyMessage(2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ym
 * JD-Core Version:    0.6.2
 */