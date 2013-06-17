package com.antivirus.wipe;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.antivirus.m;
import com.avg.toolkit.c.a;

class af
  implements View.OnClickListener
{
  af(ab paramab)
  {
  }

  public void onClick(View paramView)
  {
    if (ab.e(this.a).getText().toString().equals("1234"))
    {
      if (ab.f(this.a) != null)
        ab.f(this.a).setEnabled(false);
      ab.g(this.a);
      a.a(ab.h(this.a), "wipe_sd", "ok", "success", 0);
    }
    while (true)
    {
      return;
      Toast.makeText(ab.i(this.a), m.a(ab.j(this.a), 2131296619), 1).show();
      ab.e(this.a).setText("");
      a.a(ab.k(this.a), "wipe_sd", "ok", "failure", 0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.af
 * JD-Core Version:    0.6.2
 */