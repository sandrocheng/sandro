package com.antivirus.ui.antitheft;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.antivirus.c.b;
import com.antivirus.m;
import com.avg.toolkit.b.f;
import com.avg.toolkit.c.a;

class aa
  implements View.OnClickListener
{
  aa(z paramz, EditText paramEditText)
  {
  }

  public void onClick(View paramView)
  {
    z.a(this.b, this.a.getText().toString());
    if (!f.a(this.b.h()))
      z.a(this.b, m.a(z.a(this.b), 2131296723), m.a(z.b(this.b), 2131296261));
    while (true)
    {
      return;
      if (b.a(z.c(this.b), true))
      {
        z.d(this.b).a(z.c(this.b));
        a.a(this.b.h(), "anti_theft", "register_first", null, 0);
      }
      else
      {
        z.a(this.b, m.a(z.e(this.b), 2131296479), m.a(z.f(this.b), 2131296271));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.aa
 * JD-Core Version:    0.6.2
 */