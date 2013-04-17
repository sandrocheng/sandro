import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity.a;

public final class afn
  implements View.OnClickListener
{
  public afn(WebUIActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView.equals(WebUIActivity.a.a(this.a)))
      if ((WebUIActivity.a.b(this.a) != null) && (WebUIActivity.a.b(this.a).canGoBack()))
        WebUIActivity.a.b(this.a).goBack();
    while (true)
    {
      return;
      if (paramView.equals(WebUIActivity.a.c(this.a)))
      {
        if ((WebUIActivity.a.b(this.a) != null) && (WebUIActivity.a.b(this.a).canGoForward()))
          WebUIActivity.a.b(this.a).goForward();
      }
      else if (paramView.equals(WebUIActivity.a.d(this.a)))
      {
        if (WebUIActivity.a.b(this.a) != null)
          WebUIActivity.a.b(this.a).reload();
      }
      else if ((paramView.equals(WebUIActivity.a.e(this.a))) && (WebUIActivity.a.b(this.a) != null))
        try
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(WebUIActivity.a.b(this.a).getUrl()));
          WebUIActivity.a.f(this.a).startActivity(localIntent);
        }
        catch (Exception localException)
        {
          ha.b(WebUIActivity.a.g(this.a), 2131429543);
          localException.printStackTrace();
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afn
 * JD-Core Version:    0.6.2
 */