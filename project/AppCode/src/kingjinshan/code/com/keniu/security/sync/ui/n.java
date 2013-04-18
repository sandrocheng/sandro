package com.keniu.security.sync.ui;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class n
  implements View.OnFocusChangeListener
{
  n(RegisterAct paramRegisterAct)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (RegisterAct.g(this.a))
      RegisterAct.h(this.a);
    while (true)
    {
      return;
      String str = ((EditText)paramView).getText().toString().trim();
      if (!Pattern.compile("^[^* ]{6,32}$").matcher(str).matches())
        RegisterAct.a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.n
 * JD-Core Version:    0.6.2
 */