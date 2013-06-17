package com.antivirus.ui.antitheft;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.antivirus.c;
import com.antivirus.m;
import com.avg.toolkit.c.a;

class e
  implements DialogInterface.OnClickListener
{
  e(b paramb, EditText paramEditText)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString();
    a.a(b.g(this.b), "anti_theft", "registered_account", null, 0);
    if (com.antivirus.c.b.a(str1, true))
    {
      String str2 = c.a(b.h(this.b));
      if ((b.i(this.b) != null) && (str2 != null) && (str2.equals(str1)))
        b.a(this.b, m.a(b.j(this.b), 2131296514), m.a(b.k(this.b), 2131296813));
    }
    while (true)
    {
      return;
      b.l(this.b).a(str1);
      continue;
      b.a(this.b, m.a(b.m(this.b), 2131296479), m.a(b.n(this.b), 2131296271));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.e
 * JD-Core Version:    0.6.2
 */