import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bjw
  implements View.OnClickListener
{
  bjw(bjo parambjo, EditText paramEditText1, EditText paramEditText2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    aai localaai = aai.a();
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    int i;
    if (str1.length() == 0)
      i = 2131427786;
    while (true)
    {
      Toast.makeText(bjo.r(this.d), i, 1).show();
      this.c.dismiss();
      return;
      if (!str1.equals(str2))
        i = 2131427788;
      else if (str1.equals(bjo.a(this.d).be()))
        i = 2131428927;
      else if (localaai.a(str1, str2))
        i = 2131427783;
      else
        i = 2131427785;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjw
 * JD-Core Version:    0.6.2
 */