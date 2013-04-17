import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class aug
  implements View.OnClickListener
{
  aug(atz paramatz, EditText paramEditText1, CheckBoxView paramCheckBoxView1, CheckBoxView paramCheckBoxView2, boolean paramBoolean, EditText paramEditText2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    boolean bool1 = this.b.getChecked();
    boolean bool2 = this.c.getChecked();
    if (str1.length() == 0)
      ha.a(atz.F(this.g), atz.G(this.g).getString(2131428734));
    while (true)
    {
      return;
      if (this.d)
        str1 = str1.replaceAll("\\*+$", "") + "*";
      String str2 = this.e.getText().toString().trim();
      if ("".equals(str2))
      {
        atz.H(this.g);
        str2 = ki.a(str1);
      }
      lf locallf = new lf(str2, str1, atz.I(this.g));
      locallf.enableForCalling = bool1;
      locallf.enableForSMS = bool2;
      locallf.b = atz.I(this.g);
      if (atz.I(this.g) == 0)
        locallf.a = new vk.a(locallf.phonenum, false, 4);
      atz.J(this.g).a(locallf, atz.I(this.g));
      this.f.dismiss();
      nd localnd = nd.a();
      if (atz.I(this.g) == 0)
        localnd.a(26098);
      else
        localnd.a(26099);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aug
 * JD-Core Version:    0.6.2
 */