import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.JsPromptResult;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class afz
  implements View.OnClickListener
{
  afz(JsPromptResult paramJsPromptResult, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = ((EditText)paramView.findViewById(2131230843)).getText().toString();
    this.a.confirm(str);
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afz
 * JD-Core Version:    0.6.2
 */