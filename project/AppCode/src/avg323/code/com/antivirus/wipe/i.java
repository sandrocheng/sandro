package com.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.widget.CheckBox;
import com.antivirus.m;
import java.util.ArrayList;

class i
  implements Runnable
{
  i(b paramb, boolean paramBoolean)
  {
  }

  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(b.C(this.b));
    localBuilder.setTitle(m.a(b.D(this.b), 2131296622));
    localBuilder.setIcon(2130837720);
    if (this.a)
      localBuilder.setMessage(m.a(b.E(this.b), 2131296624));
    while (true)
    {
      localBuilder.setPositiveButton(m.a(b.G(this.b), 2131296269), new j(this));
      b.a(this.b, localBuilder.create());
      b.g(this.b).setCanceledOnTouchOutside(false);
      b.g(this.b).show();
      if (b.w(this.b).isChecked())
        b.w(this.b).setChecked(false);
      b.s(this.b);
      b.d(this.b).clear();
      return;
      localBuilder.setMessage(m.a(b.F(this.b), 2131296625));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.i
 * JD-Core Version:    0.6.2
 */