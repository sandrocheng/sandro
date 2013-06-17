package com.antivirus.ui.protection;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import com.antivirus.core.b;
import com.antivirus.m;
import com.avg.toolkit.e.e;

class z
  implements Runnable
{
  z(x paramx)
  {
  }

  public void run()
  {
    if (r.a(this.a.b.a) != null)
    {
      r.a(this.a.b.a).dismiss();
      r.a(this.a.b.a, null);
      r.a(this.a.b.a, null);
      b localb = new b(r.l(this.a.b.a).getApplicationContext());
      if ((this.a.a != null) && (!"NOCHANGE".equals(this.a.a)) && (!localb.u().equals(r.m(this.a.b.a))))
        break label337;
      String str1 = m.a(r.n(this.a.b.a), 2131296675);
      if ((e.a() != null) && (e.a().b()))
        str1 = m.a(r.o(this.a.b.a), 2131296674);
      String str2 = m.a(r.p(this.a.b.a), 2131296488).replace("[appname]", str1);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(r.q(this.a.b.a));
      localBuilder.setTitle(str2);
      localBuilder.setMessage(m.a(r.r(this.a.b.a), 2131296526));
      localBuilder.setIcon(2130837871);
      localBuilder.setPositiveButton(m.a(r.s(this.a.b.a), 2131296269), new aa(this));
      localBuilder.setCancelable(true);
      r.b(this.a.b.a, localBuilder.show());
    }
    while (true)
    {
      return;
      label337: r.t(this.a.b.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.z
 * JD-Core Version:    0.6.2
 */