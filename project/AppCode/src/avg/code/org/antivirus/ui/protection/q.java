package org.antivirus.ui.protection;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ProgressBar;
import org.antivirus.Strings;

final class q extends BroadcastReceiver
{
  q(ProtectionActivity paramProtectionActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    if (paramIntent.getAction().equals("droidsec.com.update"))
    {
      ProtectionActivity.g();
      if (!paramIntent.getBooleanExtra("result", false))
        break label214;
      i = paramIntent.getIntExtra("progress", -1);
      if (i != 1)
        break label82;
      if (ProtectionActivity.a(this.a) == null)
        break label203;
      ProgressBar localProgressBar2 = (ProgressBar)ProtectionActivity.d(this.a).findViewById(2131230911);
      localProgressBar2.setMax(100);
      localProgressBar2.setProgress(1);
    }
    label82: int j;
    do
    {
      while (true)
      {
        return;
        if (i != 2)
          break;
        if (ProtectionActivity.a(this.a) == null)
          break label203;
        ((ProgressBar)ProtectionActivity.d(this.a).findViewById(2131230911)).setProgress(10);
      }
      j = paramIntent.getIntExtra("size", 0);
    }
    while (j <= 0);
    if (ProtectionActivity.a(this.a) != null)
    {
      ProgressBar localProgressBar1 = (ProgressBar)ProtectionActivity.d(this.a).findViewById(2131230911);
      localProgressBar1.setMax(j);
      localProgressBar1.setProgress(j / 10);
    }
    new Thread(new r(this, paramIntent.getStringExtra("type"))).start();
    while (true)
    {
      label203: this.a.unregisterReceiver(this);
      break;
      label214: if (ProtectionActivity.a(this.a) != null)
      {
        ProtectionActivity.a(this.a).dismiss();
        ProtectionActivity.b(this.a);
        ProtectionActivity.c(this.a);
      }
      this.a.a(Strings.getString(2131296403));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.q
 * JD-Core Version:    0.6.2
 */