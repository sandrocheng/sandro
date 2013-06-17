package com.antivirus.ui.protection;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avg.ui.general.a.a;
import com.avg.ui.general.b.c;

class u extends BroadcastReceiver
{
  u(r paramr)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getIntExtra("SCAN_STATUS_BROADCAST_EXTRA", -1) == -3)
    {
      r.a(this.a, false);
      r.d(this.a).getIntent().removeExtra("SCAN_STATUS_EXTRA");
      r.e(this.a);
      c localc = (c)r.f(this.a).getItem(ah.a(ah.b));
      localc.a = r.g(this.a);
      localc.b = r.h(this.a);
      localc.f = r.i(this.a);
      r.f(this.a).notifyDataSetChanged();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.u
 * JD-Core Version:    0.6.2
 */