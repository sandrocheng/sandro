package com.keniu.security.sync.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class l
  implements View.OnClickListener
{
  l(RegisterAct paramRegisterAct)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = RegisterAct.b(this.a).getText().toString().trim();
    String str2 = RegisterAct.c(this.a).getText().toString().trim();
    String str3 = RegisterAct.d(this.a).getText().toString().trim();
    if (!Pattern.compile("^(13[0-9]|15[0-9]|18[0-9]|147|190)[0-9]{8}$").matcher(str1).matches())
      com.keniu.security.sync.l.a(this.a, 2131429492);
    while (true)
    {
      return;
      if (!Pattern.compile("^[^* ]{6,32}$").matcher(str2).matches())
        com.keniu.security.sync.l.a(this.a, 2131429491);
      else if (!str3.equals(str2))
        com.keniu.security.sync.l.a(this.a, 2131429493);
      else
        RegisterAct.a(this.a, str1, str2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.l
 * JD-Core Version:    0.6.2
 */