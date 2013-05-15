package com.avast.android.generic.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.avast.android.generic.ae;
import com.avast.android.generic.s;
import com.avast.android.generic.ui.widget.PasswordTextView;

class z
  implements View.OnClickListener
{
  z(y paramy)
  {
  }

  public void onClick(View paramView)
  {
    PasswordDialog.d(this.a.b);
    String str = PasswordDialog.a(this.a.b).a();
    if ((PasswordDialog.e(this.a.b).b(str)) || (PasswordDialog.e(this.a.b).c(str)))
      PasswordDialog.b(this.a.b);
    while (true)
    {
      return;
      PasswordDialog.f(this.a.b).setVisibility(0);
      PasswordDialog.f(this.a.b).setImageResource(s.e);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.z
 * JD-Core Version:    0.6.2
 */