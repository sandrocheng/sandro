package com.avg.tuneup.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.avg.a.g;
import java.util.Calendar;

class e
  implements DialogInterface.OnClickListener
{
  e(a parama, float paramFloat, int paramInt1, int paramInt2)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    s.a(a.d(this.d).getApplicationContext()).a(a.c(this.d).getTimeInMillis());
    a.a(this.d, this.a, a.e(this.d), this.b, this.c, a.f(this.d));
    paramDialogInterface.dismiss();
    if (a.g(this.d))
      Toast.makeText(a.h(this.d).getApplicationContext(), a.i(this.d).getString(g.traffic_settings_reset_confirmation), 0).show();
    while (true)
    {
      a.l(this.d).finish();
      return;
      Toast.makeText(a.j(this.d).getApplicationContext(), a.k(this.d).getString(g.settings_saved), 0).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.e
 * JD-Core Version:    0.6.2
 */