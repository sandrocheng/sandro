import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bim
  implements View.OnClickListener
{
  bim(big parambig, EditText paramEditText1, EditText paramEditText2, CheckBoxView paramCheckBoxView1, CheckBoxView paramCheckBoxView2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    if (str1.length() == 0)
      ha.a(big.p(this.f), big.q(this.f).getString(2131428734));
    while (true)
    {
      return;
      String str2 = this.b.getText().toString().trim();
      if ("".equals(str2))
      {
        big.r(this.f);
        str2 = ki.a(str1);
      }
      lf locallf = new lf(str2, str1, 2);
      locallf.enableForCalling = this.c.getChecked();
      locallf.enableForSMS = this.d.getChecked();
      locallf.b = 2;
      big.s(this.f).a(locallf, 2);
      this.e.dismiss();
      nd.a().a(26101);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bim
 * JD-Core Version:    0.6.2
 */