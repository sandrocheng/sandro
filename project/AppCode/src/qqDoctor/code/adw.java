import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.QQWebdiskHelpActivity;
import com.tencent.qqpimsecure.uilib.view.slide.SlideLayoutExPoint;

public final class adw
  implements View.OnClickListener
{
  public adw(QQWebdiskHelpActivity paramQQWebdiskHelpActivity)
  {
  }

  public final void onClick(View paramView)
  {
    QQWebdiskHelpActivity.b(this.a).snapToScreen(1 + QQWebdiskHelpActivity.b(this.a).getCurrentCanvasIndex());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adw
 * JD-Core Version:    0.6.2
 */