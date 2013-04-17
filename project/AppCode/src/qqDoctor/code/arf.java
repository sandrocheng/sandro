import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class arf extends BaseView
  implements IRetryListener
{
  private WebView a;

  public arf(Context paramContext)
  {
    super(paramContext, 2130903193);
  }

  public final void onCancel()
  {
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ((WebView)findViewById(2131231186));
    this.a.getSettings().setJavaScriptEnabled(true);
    this.a.setWebViewClient(new arg(this));
    this.a.loadUrl("http://msm.qq.com/wap/strength.html");
  }

  public final void onRetry()
  {
    this.a.loadUrl("http://msm.qq.com/wap/strength.html");
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleTextData(2131429804);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arf
 * JD-Core Version:    0.6.2
 */