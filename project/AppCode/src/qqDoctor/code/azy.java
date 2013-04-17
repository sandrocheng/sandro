import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class azy
  implements View.OnClickListener
{
  azy(EditText paramEditText1, EditText paramEditText2, Context paramContext, String paramString1, String paramString2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    if ((str1.length() == 0) || (str2.length() == 0))
      Toast.makeText(this.c, this.c.getString(2131428577), 1).show();
    while (true)
    {
      this.f.dismiss();
      return;
      if ((!str1.equals(this.d)) || (!str2.equals(this.e)))
      {
        ff.a("kfc", "user has change the query code: " + str1 + " " + str2);
        wr.a(this.c).a(str1, str2);
      }
      gu.a(str1, str2);
      ha.a(this.c, this.c.getString(2131428578));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azy
 * JD-Core Version:    0.6.2
 */