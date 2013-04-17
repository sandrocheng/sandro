import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class aqr
  implements View.OnClickListener
{
  aqr(aqo paramaqo)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = aqo.r(this.a).getText().toString().trim();
    String str2 = aqo.m(this.a).getText().toString().trim();
    if ((str1 == null) || (str1.equals("")) || (str1.length() < 7) || (str2 == null) || (str2.equals("")))
      ha.b(aqo.s(this.a), 2131427496);
    while (true)
    {
      return;
      aqo.a(this.a, str1, str2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqr
 * JD-Core Version:    0.6.2
 */