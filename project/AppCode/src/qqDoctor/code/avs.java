import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class avs
  implements View.OnClickListener
{
  avs(avh paramavh, EditText paramEditText, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString();
    if (!"".equals(str.trim()))
    {
      nd.a().a(26100);
      this.c.a(str);
      this.b.dismiss();
    }
    while (true)
    {
      return;
      this.a.setText("");
      ha.a(avh.m(this.c), 2131428735);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avs
 * JD-Core Version:    0.6.2
 */