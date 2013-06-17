package com.antivirus.antitheft;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.antivirus.c;
import com.antivirus.m;
import com.avg.toolkit.c.a;
import java.util.Timer;

class y
  implements View.OnClickListener
{
  y(LockScreen paramLockScreen)
  {
  }

  public void onClick(View paramView)
  {
    if (LockScreen.b())
    {
      LockScreen.a(false);
      LockScreen.c.purge();
    }
    while (true)
    {
      return;
      if ((c.p()) && (this.a.a != null) && (!TextUtils.isEmpty(this.a.a.getText().toString())) && (this.a.a.getText().toString().equals(c.e(this.a))))
      {
        c.f(false);
        if (LockScreen.c != null)
          LockScreen.c.cancel();
        b.b(this.a);
        this.a.finish();
        a.a(this.a, "anti_theft", "unlock", "success", 0);
      }
      else
      {
        Toast.makeText(this.a, m.a(this.a, 2131296549), 0).show();
        LockScreen.a(this.a);
        a.a(this.a, "anti_theft", "unlock", "failure", 0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.y
 * JD-Core Version:    0.6.2
 */