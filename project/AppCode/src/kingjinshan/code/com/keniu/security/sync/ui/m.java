package com.keniu.security.sync.ui;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.AutoCompleteTextView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class m
  implements View.OnFocusChangeListener
{
  m(RegisterAct paramRegisterAct)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (RegisterAct.e(this.a))
      RegisterAct.f(this.a);
    while (true)
    {
      return;
      if (!Pattern.compile("^(13[0-9]|15[0-9]|18[0-9]|147|190)[0-9]{8}$").matcher(RegisterAct.b(this.a).getText().toString().trim()).matches())
      {
        RegisterAct.b(this.a);
        RegisterAct.a();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.m
 * JD-Core Version:    0.6.2
 */