import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.service.ToastSuspensionWindow;
import com.tencent.qqpimsecure.service.ToastSuspensionWindow.ToastSuspensionView;

public final class acf
  implements View.OnClickListener
{
  public acf(ToastSuspensionWindow.ToastSuspensionView paramToastSuspensionView)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.h.sendEmptyMessage(4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acf
 * JD-Core Version:    0.6.2
 */