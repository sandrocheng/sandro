package com.antivirus.ui.protection;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ProgressBar;
import com.antivirus.m;
import com.avg.ui.general.a.a;

class w extends BroadcastReceiver
{
  w(r paramr)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    if (paramIntent.getAction().equals("droidsec.com.update"))
    {
      r.a(false);
      if (!paramIntent.getBooleanExtra("result", false))
        break label218;
      i = paramIntent.getIntExtra("progress", -1);
      if (i != 1)
        break label83;
      if (r.a(this.a) == null)
        break label204;
      ProgressBar localProgressBar2 = (ProgressBar)r.j(this.a).findViewById(2131230970);
      localProgressBar2.setMax(100);
      localProgressBar2.setProgress(1);
    }
    label83: int j;
    do
    {
      while (true)
      {
        return;
        if (i != 2)
          break;
        if (r.a(this.a) == null)
          break label204;
        ((ProgressBar)r.j(this.a).findViewById(2131230970)).setProgress(10);
      }
      j = paramIntent.getIntExtra("size", 0);
    }
    while (j <= 0);
    if (r.a(this.a) != null)
    {
      ProgressBar localProgressBar1 = (ProgressBar)r.j(this.a).findViewById(2131230970);
      localProgressBar1.setMax(j);
      localProgressBar1.setProgress(j / 10);
    }
    new Thread(new x(this, paramIntent.getStringExtra("type"))).start();
    while (true)
    {
      label204: r.x(this.a).unregisterReceiver(this);
      break;
      label218: if (r.a(this.a) != null)
      {
        r.a(this.a).dismiss();
        r.a(this.a, null);
        r.a(this.a, null);
      }
      r.a(this.a, m.a(r.w(this.a), 2131296598));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.w
 * JD-Core Version:    0.6.2
 */