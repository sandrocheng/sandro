package com.avg.tuneup.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.avg.a.g;

class f
  implements DialogInterface.OnClickListener
{
  f(a parama, float paramFloat, int paramInt1, int paramInt2)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a(this.d, this.a, a.e(this.d), this.b, this.c, a.f(this.d));
    paramDialogInterface.dismiss();
    if (a.g(this.d))
      Toast.makeText(a.m(this.d).getApplicationContext(), a.n(this.d).getString(g.traffic_settings_reset_confirmation), 0).show();
    while (true)
    {
      a.q(this.d).finish();
      return;
      Toast.makeText(a.o(this.d).getApplicationContext(), a.p(this.d).getString(g.settings_saved), 0).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.f
 * JD-Core Version:    0.6.2
 */