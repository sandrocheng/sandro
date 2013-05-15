package com.avast.android.generic.ui;

import android.app.AlertDialog;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.app.passwordrecovery.a;
import com.avast.android.generic.app.passwordrecovery.b;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.widget.PasswordTextView;

class f
  implements View.OnClickListener
{
  f(e parame)
  {
  }

  public void onClick(View paramView)
  {
    String str1 = ChangePasswordDialog.b(this.a.b).a();
    String str2 = ChangePasswordDialog.c(this.a.b).a();
    if ((ChangePasswordDialog.a(this.a.b, str1, str2)) && (!"0000".equals(str1)))
    {
      ae localae = (ae)ad.a(this.a.b.getActivity(), ae.class);
      localae.d(str1);
      a.a(this.a.b.getActivity(), b.a);
      if ((this.a.b.getArguments() != null) && (this.a.b.getArguments().getBoolean("enableProtection")))
        localae.b(true);
      ChangePasswordDialog.a(this.a.b, t.u);
      this.a.a.dismiss();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.f
 * JD-Core Version:    0.6.2
 */