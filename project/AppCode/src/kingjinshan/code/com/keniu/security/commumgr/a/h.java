package com.keniu.security.commumgr.a;

import android.os.Handler;
import android.view.View;
import android.widget.EditText;
import com.keniu.security.util.w;

final class h
  implements w
{
  h(g paramg, View paramView)
  {
  }

  public final void a()
  {
    EditText localEditText1 = (EditText)this.a.findViewById(2131231092);
    EditText localEditText2 = (EditText)this.a.findViewById(2131231093);
    String str1 = localEditText1.getText().toString();
    String str2 = localEditText2.getText().toString();
    if (!e.a(str1))
      e.c().sendEmptyMessage(2);
    while (true)
    {
      return;
      t localt = new t(6);
      localt.a(str1, str2);
      e.a(this.b.a, localt, new i(this), false);
    }
  }

  public final void b()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.h
 * JD-Core Version:    0.6.2
 */