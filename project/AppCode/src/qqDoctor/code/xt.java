import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;

final class xt
  implements View.OnClickListener
{
  xt(xn paramxn, EditText paramEditText1, EditText paramEditText2, EditText paramEditText3, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    String str3 = this.c.getText().toString();
    int i;
    if (str2.length() == 0)
      i = 2131427786;
    while (true)
    {
      ha.b(this.e.a, i);
      return;
      if (!this.e.a(str1))
      {
        i = 2131429387;
      }
      else if (!str2.equals(str3))
      {
        i = 2131427788;
      }
      else if (str1.equals(str2))
      {
        i = 2131429388;
      }
      else
      {
        i = 2131427783;
        this.e.c.setPassword(str2);
        this.d.dismiss();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xt
 * JD-Core Version:    0.6.2
 */