import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bkd
  implements View.OnClickListener
{
  bkd(bjo parambjo, EditText paramEditText1, EditText paramEditText2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    if (str1.length() > 0)
    {
      bjo.a(this.d).e(str1);
      String str2 = this.b.getText().toString().trim();
      if (str2.length() <= 0)
        break label97;
      bjo.a(this.d).d(str2);
    }
    while (true)
    {
      this.c.dismiss();
      return;
      ha.b(bjo.e(this.d), bjo.f(this.d).getString(2131428405));
      break;
      label97: ha.b(bjo.g(this.d), bjo.h(this.d).getString(2131428406));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bkd
 * JD-Core Version:    0.6.2
 */