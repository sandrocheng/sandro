package com.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import com.antivirus.m;
import com.avg.toolkit.c.a;
import java.util.ArrayList;

class c
  implements View.OnClickListener
{
  c(b paramb)
  {
  }

  public void onClick(View paramView)
  {
    a.a(b.a(this.a), "wipe_data", "wipe", null, 0);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(b.b(this.a));
    localBuilder.setTitle(m.a(b.c(this.a), 2131296622));
    localBuilder.setIcon(2130837722);
    if ((b.d(this.a) == null) || (b.d(this.a).size() == 0))
    {
      localBuilder.setMessage(m.a(b.e(this.a), 2131296626));
      localBuilder.setPositiveButton(m.a(b.f(this.a), 2131296269), new d(this));
    }
    while (true)
    {
      b.a(this.a, localBuilder.create());
      b.g(this.a).setCanceledOnTouchOutside(false);
      b.g(this.a).show();
      b.l(this.a);
      return;
      localBuilder.setMessage(m.a(b.h(this.a), 2131296623));
      localBuilder.setPositiveButton(m.a(b.i(this.a), 2131296269), new e(this));
      localBuilder.setNegativeButton(m.a(b.k(this.a), 2131296270), new f(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.c
 * JD-Core Version:    0.6.2
 */