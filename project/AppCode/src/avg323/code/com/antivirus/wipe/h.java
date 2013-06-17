package com.antivirus.wipe;

import android.app.ProgressDialog;
import com.antivirus.m;

class h
  implements Runnable
{
  h(b paramb)
  {
  }

  public void run()
  {
    b.a(this.a, new ProgressDialog(b.y(this.a)));
    b.A(this.a).setTitle(m.a(b.z(this.a), 2131296622));
    b.A(this.a).setMessage(m.a(b.B(this.a), 2131296622));
    b.A(this.a).setIcon(2130837744);
    b.A(this.a).setCanceledOnTouchOutside(false);
    b.A(this.a).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.h
 * JD-Core Version:    0.6.2
 */