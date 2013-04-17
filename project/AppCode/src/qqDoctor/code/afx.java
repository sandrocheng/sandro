import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.JsResult;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class afx
  implements View.OnClickListener
{
  afx(JsResult paramJsResult, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.confirm();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afx
 * JD-Core Version:    0.6.2
 */