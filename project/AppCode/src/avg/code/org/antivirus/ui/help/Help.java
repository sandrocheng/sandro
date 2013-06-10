package org.antivirus.ui.help;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import org.antivirus.AVService;
import org.antivirus.Strings;
import org.antivirus.ui.BaseListAdapter;
import org.antivirus.ui.BaseToolListActivity;

public class Help extends BaseToolListActivity
{
  private Runnable a = null;
  private Handler b;
  private AlertDialog c = null;
  private IntentFilter f = new IntentFilter("inAppIntentFilterScreen");
  private ProgressDialog g = null;
  private BroadcastReceiver h = new a(this);
  private BaseListAdapter i;
  private org.antivirus.core.b.a j;
  private boolean k;
  private ServiceConnection l = new b(this);

  private void d()
  {
    if ((this.b != null) && (this.a != null))
      this.b.removeCallbacks(this.a);
    try
    {
      if (this.h != null)
        unregisterReceiver(this.h);
      label40: return;
    }
    catch (Exception localException)
    {
      break label40;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bindService(new Intent(this, AVService.class), this.l, 1);
    setContentView(2130903083);
    a(2130837522, 2130837523, Strings.getString(2131296262), false);
  }

  protected void onDestroy()
  {
    if (this.c != null)
      this.c.dismiss();
    if (this.g != null)
      this.g.dismiss();
    d();
    if (this.k)
    {
      unbindService(this.l);
      this.k = false;
    }
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.help.Help
 * JD-Core Version:    0.6.2
 */