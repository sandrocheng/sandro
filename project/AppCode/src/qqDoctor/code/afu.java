import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.b;

public final class afu
  implements View.OnClickListener
{
  public afu(WifiApproveDialog.b paramb)
  {
  }

  public final void onClick(View paramView)
  {
    if ((paramView.getId() == 2131230834) && (this.a.c.canGoBack()))
      this.a.c.goBack();
    while (true)
    {
      return;
      if ((paramView.getId() == 2131230835) && (this.a.c.canGoForward()))
        this.a.c.goForward();
      else if ((paramView.getId() == 2131230832) && (this.a.c.canGoBack()))
        this.a.c.goBack();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afu
 * JD-Core Version:    0.6.2
 */