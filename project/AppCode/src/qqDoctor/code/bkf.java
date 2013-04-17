import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bkf
  implements View.OnClickListener
{
  bkf(bjo parambjo, EditText paramEditText1, EditText paramEditText2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    if (str1.length() > 0)
    {
      bjo.a(this.d).g(str1);
      String str2 = this.b.getText().toString().trim();
      if (str2.length() <= 0)
        break label97;
      bjo.a(this.d).f(str2);
    }
    while (true)
    {
      this.c.dismiss();
      return;
      ha.b(bjo.i(this.d), bjo.j(this.d).getString(2131428405));
      break;
      label97: ha.b(bjo.k(this.d), bjo.l(this.d).getString(2131428406));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bkf
 * JD-Core Version:    0.6.2
 */