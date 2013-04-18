package com.keniu.security.sync.ui;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class o
  implements View.OnFocusChangeListener
{
  o(RegisterAct paramRegisterAct)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (RegisterAct.i(this.a))
      RegisterAct.j(this.a);
    while (true)
    {
      return;
      String str = ((EditText)paramView).getText().toString().trim();
      if (!Pattern.compile("^[^* ]{6,32}$").matcher(str).matches())
        RegisterAct.a();
      else if (!RegisterAct.d(this.a).getText().toString().trim().equals(RegisterAct.c(this.a).getText().toString().trim()))
        RegisterAct.a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.o
 * JD-Core Version:    0.6.2
 */