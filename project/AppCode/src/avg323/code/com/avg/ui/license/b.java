package com.avg.ui.license;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;
import com.avg.ui.general.g;

class b extends Handler
{
  b(a parama)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    boolean bool = ((Boolean)paramMessage.obj).booleanValue();
    if (a.a(this.a) != null)
    {
      a.a(this.a).dismiss();
      a.a(this.a, null);
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a.b(this.a));
    localBuilder.setTitle(a.c(this.a).getString(g.license_activation_block_title));
    localBuilder.setIcon(com.avg.ui.general.c.dlg_ic_license);
    if (bool);
    for (String str = a.d(this.a).getString(g.license_activation_licensed_pro_toast); ; str = a.e(this.a).getString(g.license_invalid_title))
    {
      localBuilder.setMessage(str);
      localBuilder.setPositiveButton(a.f(this.a).getString(g.ok), new c(this, bool));
      a.a(this.a, localBuilder.create());
      a.i(this.a).setCanceledOnTouchOutside(false);
      a.i(this.a).show();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.b
 * JD-Core Version:    0.6.2
 */