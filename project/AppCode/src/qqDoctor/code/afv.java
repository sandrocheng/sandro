import android.view.LayoutInflater;
import android.view.View;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.b;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class afv extends WebChromeClient
{
  public afv(WifiApproveDialog.b paramb)
  {
  }

  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    if (this.a.a != null)
    {
      Dialog localDialog = new Dialog(this.a.a);
      localDialog.setTitle(2131428765);
      localDialog.setMessage(paramString2);
      localDialog.setPositiveButton(2131427397, new afw(paramJsResult, localDialog), 1);
      localDialog.show();
    }
    return true;
  }

  public final boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return false;
  }

  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    if (this.a.a != null)
    {
      Dialog localDialog = new Dialog(this.a.a);
      localDialog.setTitle(2131428766);
      localDialog.setMessage(paramString2);
      localDialog.setPositiveButton(2131427397, new afx(paramJsResult, localDialog), 1);
      localDialog.setNeutralButton(2131427379, new afy(paramJsResult, localDialog), 2);
      localDialog.show();
    }
    return true;
  }

  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    if (this.a.a != null)
    {
      View localView = LayoutInflater.from(this.a.a).inflate(2130903085, null);
      ((TextView)localView.findViewById(2131230765)).setText(paramString2);
      ((EditText)localView.findViewById(2131230843)).setText(paramString3);
      Dialog localDialog = new Dialog(this.a.a);
      localDialog.setTitle(2131428767);
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new afz(paramJsPromptResult, localDialog), 1);
      localDialog.setNegativeButton(2131427379, new aga(paramJsPromptResult, localDialog), 2);
      localDialog.show();
    }
    return true;
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    this.a.d.setProgress(paramInt);
    this.a.i.setProgress(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afv
 * JD-Core Version:    0.6.2
 */