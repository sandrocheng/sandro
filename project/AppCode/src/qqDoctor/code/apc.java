import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class apc
  implements View.OnClickListener
{
  apc(aou paramaou, EditText paramEditText, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if ((this.a.getText() == null) || (this.a.getText().toString().equals("")))
      ha.a(aou.I(this.c), 2131430075);
    while (true)
    {
      return;
      aou.d(this.c, this.a.getText().toString());
      this.b.dismiss();
      aou.B(this.c).sendEmptyMessage(503);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apc
 * JD-Core Version:    0.6.2
 */