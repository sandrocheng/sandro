package com.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.widget.Button;
import android.widget.EditText;
import com.antivirus.m;

class ah
  implements Runnable
{
  ah(ag paramag, boolean paramBoolean)
  {
  }

  public void run()
  {
    this.b.a.cancel();
    if (this.a)
    {
      AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(ab.m(this.b.b));
      localBuilder1.setTitle(m.a(ab.n(this.b.b), 2131296671));
      localBuilder1.setMessage(m.a(ab.o(this.b.b), 2131296670));
      localBuilder1.setPositiveButton(m.a(ab.p(this.b.b), 2131296269), new ai(this));
      if (ab.r(this.b.b))
      {
        ab.a(this.b.b, localBuilder1.create());
        ab.a(this.b.b).setCanceledOnTouchOutside(false);
        ab.a(this.b.b).show();
      }
    }
    while (true)
    {
      ab.e(this.b.b).setText("");
      if (ab.f(this.b.b) != null)
        ab.f(this.b.b).setEnabled(true);
      return;
      AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(ab.s(this.b.b));
      localBuilder2.setTitle(m.a(ab.t(this.b.b), 2131296620));
      localBuilder2.setIcon(2130837609);
      localBuilder2.setMessage(m.a(ab.u(this.b.b), 2131296621));
      localBuilder2.setPositiveButton(m.a(ab.v(this.b.b), 2131296269), new aj(this));
      ab.a(this.b.b, localBuilder2.create());
      ab.a(this.b.b).setCanceledOnTouchOutside(false);
      ab.a(this.b.b).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.ah
 * JD-Core Version:    0.6.2
 */