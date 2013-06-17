package com.antivirus.applocker;

import android.content.Context;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.Toast;
import com.antivirus.c;
import com.antivirus.m;
import com.avg.toolkit.b.f;

class o extends ClickableSpan
{
  o(n paramn, Context paramContext)
  {
  }

  public void onClick(View paramView)
  {
    if (f.a(n.a(this.b)))
    {
      Toast.makeText(this.a, m.a(n.b(this.b), 2131296547), 1).show();
      String str1 = c.c(n.c(this.b).getApplicationContext());
      String str2 = m.a();
      String str3 = c.b(n.d(this.b).getApplicationContext());
      e.a(this.a, str1, str2, str3);
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(n.f(this.b), "app_locker", "recover_password", null, 0);
      return;
      Toast.makeText(this.a, m.a(n.e(this.b), 2131296548), 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.o
 * JD-Core Version:    0.6.2
 */